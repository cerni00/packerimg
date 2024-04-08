## Custom Windows 2019 AMI using Packer
  
I’m going to follow the steps from the hashicorp website and create a customised Windows 2019 server and setup winrm, and set the Administrator password.

Once the AMI image is ready, were going to build an instance bases on our new AMI image.

This is the [hashicorp link](https://learn.hashicorp.com/tutorials/packer/aws-windows-image?in=packer/integrations). I have made some updates to their code like the region in AWS.

### The demonstration

**Steps**

  * Create the required packer files
  * Create the AMI image
  * Build a windows server from the new AMI
  * Login to test credentials
  * Open the FW for winrm-HTTP

now build the packer image:
```
packer validate windows_2019.pkr.hcl
packer build windows_2019.pkr.hcl
```

The build process takes around 5 minutes...

Once it completed, you will see something like this:

```
    learn-packer.amazon-ebs.firstrun-windows: AMI: ami-0636bd65d5cd8dce4
==> learn-packer.amazon-ebs.firstrun-windows: Waiting for AMI to become ready...
==> learn-packer.amazon-ebs.firstrun-windows: Terminating the source AWS instance...
==> learn-packer.amazon-ebs.firstrun-windows: Cleaning up any extra volumes...
==> learn-packer.amazon-ebs.firstrun-windows: No volumes to clean up, skipping
==> learn-packer.amazon-ebs.firstrun-windows: Deleting temporary security group...
==> learn-packer.amazon-ebs.firstrun-windows: Deleting temporary keypair...
Build 'learn-packer.amazon-ebs.firstrun-windows' finished after 8 minutes 503 milliseconds.

==> Wait completed after 8 minutes 503 milliseconds

==> Builds finished. 
```

### Create an EC2 instance fom the AMI
 I'm just creating an EC2 image from the AMI we just created.

### That's it
We just used packer to create a custom windows 2019 server.
