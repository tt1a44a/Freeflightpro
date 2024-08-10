.class Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteBluetoothGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/RemoteController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p2, "x1"    # Lcom/parrot/freeflight3/RemoteController$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;-><init>(Lcom/parrot/freeflight3/RemoteController;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->enableNotification()V

    return-void
.end method

.method private enableNotification()V
    .locals 6

    .prologue
    .line 156
    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$500(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-static {}, Lcom/parrot/freeflight3/RemoteController;->access$1100()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 158
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Lcom/parrot/freeflight3/RemoteController;->access$1200()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 160
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string v3, "RemoteController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run characteristic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$000(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 164
    invoke-static {}, Lcom/parrot/freeflight3/RemoteController;->access$1300()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 165
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 166
    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$500(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 173
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :goto_0
    return-void

    .line 168
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$1400(Lcom/parrot/freeflight3/RemoteController;)V

    goto :goto_0

    .line 171
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v3}, Lcom/parrot/freeflight3/RemoteController;->access$1400(Lcom/parrot/freeflight3/RemoteController;)V

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$1500(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v1}, Lcom/parrot/freeflight3/RemoteController;->access$1500(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$4;-><init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], characteristic = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_CSR_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$702(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead: mCsrVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v2}, Lcom/parrot/freeflight3/RemoteController;->access$700(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_MCU_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight3/RemoteController;->requestVersion(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_MCU_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$802(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead: mMcuVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v2}, Lcom/parrot/freeflight3/RemoteController;->access$800(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_SERIAL_NUMBER_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight3/RemoteController;->requestVersion(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_SERIAL_NUMBER_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/RemoteController;->access$902(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead: mSerialNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v2}, Lcom/parrot/freeflight3/RemoteController;->access$900(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$3;-><init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 177
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], characteristic = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 77
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], newState = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$000(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 80
    const-string v0, "RemoteController"

    const-string v1, "onConnectionStateChange: bad gatt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$1;-><init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 196
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorRead() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], descriptor = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 201
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorWrite() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], descriptor = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorWrite: characteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight3/RemoteController;->access$1300()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "RemoteController"

    const-string v1, "onCharacteristicWrite: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    sget-object v1, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_CSR_VERSION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight3/RemoteController;->requestVersion(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 217
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRemoteRssi() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], rssi = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 212
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReliableWriteCompleted() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 113
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered() called with: gatt = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight3/RemoteController;->access$502(Lcom/parrot/freeflight3/RemoteController;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback$2;-><init>(Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_0
    return-void
.end method
