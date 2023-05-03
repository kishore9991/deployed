terraform {
    required_providers { 
        aws ={
            source = "hasicorp/aws"
            version = "~> 4.65.0"
        }     
       }
} 
provider "aws" {
    profile ="default"
    region = "ap-south-1"
    acess_key = "AKIA2ODUVZVMAUVPGSUT"
    secrete_key ="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"
}    