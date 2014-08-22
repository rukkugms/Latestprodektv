//
//  ResViewController.m
//  Newproject
//
//  Created by GMSIndia1 on 12/13/13.
//  Copyright (c) 2013 GMSIndia1. All rights reserved.
//

#import "ResViewController.h"

@interface ResViewController ()

@end

@implementation ResViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:234.0/255.0f green:226/255.0f blue:226/255.0f alpha:1.0f];
    // Do any additional setup after loading the view from its nib.
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc]
                                         initWithTarget:self
                                         action:@selector(manpwrpage)];
    doubleTap.numberOfTapsRequired=1;
    doubleTap.delegate=(id)self;
    [self.manpwrview addGestureRecognizer:doubleTap];
    
    UITapGestureRecognizer *doubleTap1 = [[UITapGestureRecognizer alloc]
                                         initWithTarget:self
                                         action:@selector(equipPage)];
    doubleTap1.numberOfTapsRequired=1;
    doubleTap1.delegate=(id)self;
    [self.eqpView addGestureRecognizer:doubleTap1];
    UITapGestureRecognizer *doubleTap2 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(materialsPage)];
    doubleTap2.numberOfTapsRequired=1;
    doubleTap2.delegate=(id)self;
    [self.materialView addGestureRecognizer:doubleTap2];
    UITapGestureRecognizer *doubleTap3 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(fleetPage)];
    doubleTap3.numberOfTapsRequired=1;
    doubleTap3.delegate=(id)self;
    [self.fleetview addGestureRecognizer:doubleTap3];

    UITapGestureRecognizer *doubleTap4 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(toolPage)];
    doubleTap4.numberOfTapsRequired=1;
    doubleTap4.delegate=(id)self;
    [self.smalltoolview addGestureRecognizer:doubleTap4];
    
    UITapGestureRecognizer *doubleTap5 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(ThirdPage)];
    doubleTap5.numberOfTapsRequired=1;
    doubleTap5.delegate=(id)self;
    [self.thirdpartyview addGestureRecognizer:doubleTap5];
    
    UITapGestureRecognizer *doubleTap6 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(ConsumPage)];
    doubleTap6.numberOfTapsRequired=1;
    doubleTap6.delegate=(id)self;
    [self.consumbleview addGestureRecognizer:doubleTap6];


    UITapGestureRecognizer *doubleTap7 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(AssetPage)];
    doubleTap7.numberOfTapsRequired=1;
    doubleTap7.delegate=(id)self;
    [self.cmpanyassetview addGestureRecognizer:doubleTap7];
    UITapGestureRecognizer *doubleTap8 = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(crewpage)];
    doubleTap8.numberOfTapsRequired=1;
    doubleTap8.delegate=(id)self;
    [self.crewview addGestureRecognizer:doubleTap8];



}
-(void)equipPage
{
    _ModuleID=27;
    [self UserRightsforparticularmoduleselect];
   
}

-(void)manpwrpage{
    _ModuleID=26;
    [self UserRightsforparticularmoduleselect];
   }
-(void)materialsPage
{
    _ModuleID=28;
    [self UserRightsforparticularmoduleselect];
   
}


-(void)fleetPage{
    _ModuleID=29;
    [self UserRightsforparticularmoduleselect];
  
    
}
-(void)toolPage{
    _ModuleID=36;
    [self UserRightsforparticularmoduleselect];
   

    
}
-(void)ThirdPage{
    _ModuleID=34;
    [self UserRightsforparticularmoduleselect];
   

}
-(void)ConsumPage{
    _ModuleID=35;
    [self UserRightsforparticularmoduleselect];
    
    
}
-(void)AssetPage{
    _ModuleID=35;
    [self UserRightsforparticularmoduleselect];
   
}
-(void)crewpage{
    _ModuleID=37;
    [self UserRightsforparticularmoduleselect];
    

    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closebtnActn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)UserRightsforparticularmoduleselect{
    recordResults = FALSE;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    userid = [defaults objectForKey:@"Userid"];
    
    
    NSString *soapMessage;
    
    
    soapMessage = [NSString stringWithFormat:
                   
                   @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                   "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                   
                   
                   "<soap:Body>\n"
                   
                   "<UserRightsforparticularmoduleselect xmlns=\"http://ios.kontract360.com/\">\n"
                   "<UserId>%d</UserId>\n"
                   "<ModuleId>%d</ModuleId>\n"
                   "</UserRightsforparticularmoduleselect>\n"
                   "</soap:Body>\n"
                   "</soap:Envelope>\n",[userid integerValue],_ModuleID];
    NSLog(@"soapmsg%@",soapMessage);
    
    
    // NSURL *url = [NSURL URLWithString:@"http://192.168.0.100/service.asmx"];
    NSURL *url = [NSURL URLWithString:@"http://192.168.0.100/service.asmx"];
    
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    
    NSString *msgLength = [NSString stringWithFormat:@"%d", [soapMessage length]];
    
    [theRequest addValue: @"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    
    [theRequest addValue: @"http://ios.kontract360.com/UserRightsforparticularmoduleselect" forHTTPHeaderField:@"Soapaction"];
    
    [theRequest addValue: msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest setHTTPBody: [soapMessage dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    
    if( theConnection )
    {
        _webData = [NSMutableData data];
    }
    else
    {
        ////NSLog(@"theConnection is NULL");
    }
    
}

#pragma mark - Connection
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	[_webData setLength: 0];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
   	[_webData appendData:data];
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    UIAlertView *  Alert=[[UIAlertView alloc]initWithTitle:nil message:@"ERROR with the Connection" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [Alert show];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"DONE. Received Bytes: %d", [_webData length]);
	NSString *theXML = [[NSString alloc] initWithBytes: [_webData mutableBytes] length:[_webData length] encoding:NSUTF8StringEncoding];
	NSLog(@"xml===== %@",theXML);
    
    
	
	if( _xmlParser )
	{
		
	}
	
	_xmlParser = [[NSXMLParser alloc] initWithData: _webData];
	[_xmlParser setDelegate:(id)self];
	[_xmlParser setShouldResolveExternalEntities: YES];
    //NSDictionary *dictionary=[_xmlParser dictionaryWithValuesForKeys:[[NSArray alloc]initWithObjects:@"JobNumber", nil]];
    
    //  NSLog(@"dictioanry is %@",dictionary);
    
    
	[_xmlParser parse];
    if (_ModuleID==26) {
        
        
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            
            
            // if (!self.manVCtrl) {
            _manVCtrl=[[ManViewController alloc]initWithNibName:@"ManViewController" bundle:nil];
            // }
            _manVCtrl.modalPresentationStyle = UIModalPresentationFullScreen;
            
            [self presentViewController:_manVCtrl
                               animated:YES completion:NULL];

        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            //You don’t have right to view this form
        }
        
        
    }
    if (_ModuleID==27) {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            
            
            //if (!self.equipVCtrl) {
            _equipVCtrl=[[EqpmViewController alloc]initWithNibName:@"EqpmViewController" bundle:nil];
            // }
            _equipVCtrl.modalPresentationStyle = UIModalPresentationPageSheet;
            
            [self presentViewController:_equipVCtrl
                               animated:YES completion:NULL];
            
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
        
    }
    if (_ModuleID==28)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            // if (!self.materialVCtrl) {
            _materialVCtrl=[[MaterialsViewController alloc]initWithNibName:@"MaterialsViewController" bundle:nil];
            // }
            _materialVCtrl.modalPresentationStyle = UIModalPresentationPageSheet;
            
            [self presentViewController:_materialVCtrl
                               animated:YES completion:NULL];        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
        
    }
    if (_ModuleID==29)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            // if (!self.fleetVCtrl) {
            _fleetVCtrl=[[FleetsViewController alloc]initWithNibName:@"FleetsViewController" bundle:nil];
            // }
            
            _fleetVCtrl.modalPresentationStyle=UIModalPresentationPageSheet;
            [self presentViewController:_fleetVCtrl animated:YES completion:nil];        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
        
    }
    if (_ModuleID==30)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            //if (!self.gpctrl) {
            self.gpctrl=[[GPSetupTileViewController alloc]initWithNibName:@"GPSetupTileViewController" bundle:nil];
            //  }
            _gpctrl.modalPresentationStyle = UIModalPresentationFormSheet;
            [self presentViewController:_gpctrl
                               animated:YES completion:NULL];
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    if (_ModuleID==34)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            // if (!self.ThirdVCtrl) {
            _ThirdVCtrl=[[ThirdPartyViewController alloc]initWithNibName:@"ThirdPartyViewController" bundle:nil];
            // }
            
            _ThirdVCtrl.modalPresentationStyle=UIModalPresentationPageSheet;
            [self presentViewController: _ThirdVCtrl animated:YES completion:nil];
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    if (_ModuleID==35)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            //if (!self.ConsuVCtrl) {
            _ConsuVCtrl=[[ConsumbleViewController alloc]initWithNibName:@"ConsumbleViewController" bundle:nil];
            //}
            
            _ConsuVCtrl.modalPresentationStyle=UIModalPresentationPageSheet;
            [self presentViewController: _ConsuVCtrl animated:YES completion:nil];
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    if (_ModuleID==36)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            // if (!self.smalltoolVCtrl) {
            _smalltoolVCtrl=[[SmalltoolsViewController alloc]initWithNibName:@"SmalltoolsViewController" bundle:nil];
            // }
            
            _smalltoolVCtrl.modalPresentationStyle=UIModalPresentationPageSheet;
            [self presentViewController: _smalltoolVCtrl animated:YES completion:nil];
            
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    if (_ModuleID==37)
    {
        Rightscheck*rightsmodel=(Rightscheck *)[_userrightsarray objectAtIndex:0];
        if (rightsmodel.ViewModule==1) {
            // if (!self.AssetVCtrl) {
            _AssetVCtrl=[[AssetsViewController alloc]initWithNibName:@"AssetsViewController" bundle:nil];
            //}
            
            _AssetVCtrl.modalPresentationStyle=UIModalPresentationPageSheet;
            [self presentViewController: _AssetVCtrl animated:YES completion:nil];
            
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:@"You don’t have right to view this form" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
    }

    
    
    
}

#pragma mark-xml parser
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *) namespaceURI qualifiedName:(NSString *)qName
   attributes: (NSDictionary *)attributeDict{
    if([elementName isEqualToString:@"LogoutselectResponse"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"message"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"UserRightsforparticularmoduleselectResponse"])
    {
        _userrightsarray=[[NSMutableArray alloc]init];
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"EntryId"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"UserId"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"ModuleId"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"ViewModule"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"EditModule"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"DeleteModule"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    if([elementName isEqualToString:@"PrintModule"])
    {
        
        
        if(!_soapResults)
        {
            _soapResults = [[NSMutableString alloc] init];
        }
        recordResults = TRUE;
    }
    
    
    
    
    
    
    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
    
    
	if( recordResults )
        
	{
        
        
		[_soapResults appendString: string];
    }
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if([elementName isEqualToString:@"message"]){
        
        recordResults = FALSE;
        [self.navigationController popToRootViewControllerAnimated:YES];
        _soapResults=nil;
    }
    if([elementName isEqualToString:@"EntryId"])
    {
        
        
        recordResults = FALSE;
        _rights=[[Rightscheck alloc]init];
        _rights.entryid=[_soapResults integerValue];
        
        _soapResults=nil;
    }
    if([elementName isEqualToString:@"UserId"])
    {
        
        
        recordResults = FALSE;
        
        _rights.userid=[_soapResults integerValue];
        
        _soapResults=nil;
    }
    if([elementName isEqualToString:@"ModuleId"])
    {
        
        
        recordResults = FALSE;
        
        _rights.moduleid=[_soapResults integerValue];
        
        _soapResults=nil;
        
    }
    if([elementName isEqualToString:@"ViewModule"])
    {
        
        recordResults = FALSE;
        
        if ([_soapResults isEqualToString:@"true"]) {
            _rights.ViewModule=1;
            
            
        }
        else{
            _rights.ViewModule=0;
            
        }
        
        
        
        _soapResults=nil;
        
        
    }
    if([elementName isEqualToString:@"EditModule"])
    {
        recordResults = FALSE;
        if ([_soapResults isEqualToString:@"true"]) {
            _rights.EditModule=1;
            
            
        }
        else{
            _rights.EditModule=0;
            
        }
        _soapResults=nil;
        
        
    }
    if([elementName isEqualToString:@"DeleteModule"])
    {
        recordResults = FALSE;
        if ([_soapResults isEqualToString:@"true"]) {
            _rights.DeleteModule=1;
            
            
        }
        else{
            _rights.DeleteModule=0;
            
        }
        _soapResults=nil;
        
    }
    if([elementName isEqualToString:@"PrintModule"])
    {
        recordResults = FALSE;
        if ([_soapResults isEqualToString:@"true"]) {
            _rights.PrintModule=1;
            
            
        }
        else{
            _rights.PrintModule=0;
            
        }
        
        
        
        [_userrightsarray addObject:_rights];
        _soapResults=nil;
        
    }
    
}
@end
