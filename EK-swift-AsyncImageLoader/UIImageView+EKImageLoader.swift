//
//  UIImageView+EKImageLoader.swift
//  EK-swift-MKMapView
//
//  Created by Emre Koc on 5.06.2014.
//  Copyright (c) 2014 Emre Koc. All rights reserved.
//

import Foundation
import UIKit

class EKImageLoader:NSObject,NSURLConnectionDelegate, NSURLConnectionDataDelegate
{
    
    var imageData : NSMutableData = NSMutableData()
    var imageView:UIImageView!
    
    func getImageFromUrl(urlString:NSString!,imageView:UIImageView!)  {
        self.imageView=imageView;
        imageData=NSMutableData()
        var url : NSURL = NSURL(string: urlString)
        var request : NSMutableURLRequest = NSMutableURLRequest(URL: url)
        request.addValue("image/*",forHTTPHeaderField: "Accept")
        var connection : NSURLConnection!=NSURLConnection(request: request, delegate: self)
        connection.start()
    }
    
     func connection(_connection: NSURLConnection!,
        didReceiveResponse response: NSURLResponse!) {
            println("NSURLConnection didReceiveResponse");
    }
     func connection(_connection:NSURLConnection!,didFailWithError error:NSError!)
    {
        println("NSURLConnection didFailWithError")
    }
     func connection(connection : NSURLConnection!, didReceiveData data:NSData!)
    {
        println("NSURLConnection didReceiveData")
        self.imageData.appendData(data)
    }
     func connectionDidFinishLoading(connection : NSURLConnection!)
    {
        println("NSURLConnection connectionDidFinishLoading")
        self.imageView.image=UIImage(data:self.imageData)
    }

    
}

extension UIImageView {
    
    func setImageFromUrl(urlString:NSString!)
    {
        var imageLoader=EKImageLoader()
        imageLoader.getImageFromUrl(urlString, imageView: self)
    }
    
}