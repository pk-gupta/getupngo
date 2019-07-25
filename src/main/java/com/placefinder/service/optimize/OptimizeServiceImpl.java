package com.placefinder.service.optimize;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.placefinder.beans.distance.Dist;
import com.placefinder.beans.distance.Elements;
import com.placefinder.beans.places.AddressDetails;
import com.placefinder.beans.places.Result;

public class OptimizeServiceImpl implements OptimizeService
{

	public Map<String, List<?>> getOptimizedResult(Dist dist,AddressDetails details) 
	{
		Map<String,List<?>> optimizedResult=new HashMap<String, List<?>>();
		//taking element list from dist object
		if(!details.getStatus().equalsIgnoreCase("ZERO_RESULTS"))
		{
		List<Elements> dst=dist.getRows().get(0).getElements();
		
		//converting list to array
		Elements[] distances=dst.toArray(new Elements[dst.size()]);

		//taking result list from details object
		List<Result> address=details.getResult();
		//converting list to array
		Result[] add=address.toArray(new Result[address.size()]);
		
		
		
		
		//sorting both arrays according to distance
		for(int i=0;i<distances.length-1;i++)
		{
			for(int j=0;j<distances.length-1;j++)
			{
				if(distances[j].getDistance().getValue() > distances[j+1].getDistance().getValue())
				{
					Elements temp=distances[j];
					distances[j]=distances[j+1];
					distances[j+1]=temp;
					
					Result temp2=add[j];
					add[j]=add[j+1];
					add[j+1]=temp2;
				}
			}
		}
		
		//converting both arrays to lists
		List<Elements> destinationDistance=Arrays.asList(distances);
		List<Result> destinationAddress=Arrays.asList(add);
		//storing both lists to map
		
		optimizedResult.put("Address",	destinationAddress);
		optimizedResult.put("Distance", destinationDistance);
		
		}
		else
		{
			List<String> msg=new ArrayList<String>();
			msg.add("no nearby place");
			optimizedResult.put("msg", msg);
		}
		
		return optimizedResult;
	}

}
