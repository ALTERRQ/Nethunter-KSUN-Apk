.class public Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;
.super Ljava/lang/Object;
.source "USBArsenalUSBNetworkModel.java"


# instance fields
.field private ip_address_for_target:Ljava/lang/String;

.field private ip_gateway:Ljava/lang/String;

.field private ip_subnetmask:Ljava/lang/String;

.field private upstream_iface:Ljava/lang/String;

.field private usb_iface:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "upstream_iface"    # Ljava/lang/String;
    .param p2, "usb_iface"    # Ljava/lang/String;
    .param p3, "ip_address_for_target"    # Ljava/lang/String;
    .param p4, "ip_gateway"    # Ljava/lang/String;
    .param p5, "ip_subnetmask"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->upstream_iface:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->usb_iface:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_address_for_target:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_gateway:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_subnetmask:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getip_address_for_target()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_address_for_target:Ljava/lang/String;

    return-object v0
.end method

.method public getip_gateway()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getip_subnetmask()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_subnetmask:Ljava/lang/String;

    return-object v0
.end method

.method public getupstream_iface()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->upstream_iface:Ljava/lang/String;

    return-object v0
.end method

.method public getusb_iface()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->usb_iface:Ljava/lang/String;

    return-object v0
.end method

.method public setip_address_for_target(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip_address_for_target"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_address_for_target:Ljava/lang/String;

    return-void
.end method

.method public setip_gateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip_gateway"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_gateway:Ljava/lang/String;

    return-void
.end method

.method public setip_subnetmask(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip_subnetmask"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->ip_subnetmask:Ljava/lang/String;

    return-void
.end method

.method public setupstream_iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "upstream_iface"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->upstream_iface:Ljava/lang/String;

    return-void
.end method

.method public setusb_iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "usb_iface"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->usb_iface:Ljava/lang/String;

    return-void
.end method
