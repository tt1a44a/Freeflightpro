.class Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbAccessoryMux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string v4, "permission"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 198
    .local v3, "permissionGranted":Z
    const-string v4, "accessory"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 199
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v4, "UsbAccessoryMux"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbAccessoryReceiver has received intent for accessory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and has permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v0, :cond_0

    .line 202
    const-string v4, "usb"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 203
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "accessoryModel":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$000(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Lcom/parrot/mux/Mux;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "Parrot"

    .line 206
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .line 207
    invoke-static {v4, v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$300(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;->this$0:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-static {v4, v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->access$400(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;Landroid/hardware/usb/UsbAccessory;)V

    .line 212
    .end local v1    # "accessoryModel":Ljava/lang/String;
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    :cond_0
    return-void
.end method
