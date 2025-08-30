.class public Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;
.super Ljava/lang/Object;
.source "USBArsenalUSBSwitchModel.java"


# instance fields
.field private idProduct:Ljava/lang/String;

.field private idVendor:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private serialnumber:Ljava/lang/String;


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
    .param p1, "idVendor"    # Ljava/lang/String;
    .param p2, "idProduct"    # Ljava/lang/String;
    .param p3, "manufacturer"    # Ljava/lang/String;
    .param p4, "product"    # Ljava/lang/String;
    .param p5, "serialnumber"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getidProduct()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getidVendor()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getmanufacturer()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getproduct()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getserialnumber()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    return-object v0
.end method

.method public setidProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "idProduct"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idProduct:Ljava/lang/String;

    return-void
.end method

.method public setidVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "idVendor"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->idVendor:Ljava/lang/String;

    return-void
.end method

.method public setmanufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setproduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->product:Ljava/lang/String;

    return-void
.end method

.method public setserialnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialnumber"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->serialnumber:Ljava/lang/String;

    return-void
.end method
