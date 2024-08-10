.class Lcom/parrot/controller/devicecontrollers/DeviceController$5;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2125
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v2

    .line 2127
    .local v2, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v2, v3, :cond_0

    .line 2129
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to start the controller."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_0
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v3, :cond_1

    .line 2135
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2137
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2138
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceController "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v5, "DeviceControllerDidStartNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2144
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2188
    :goto_0
    return-void

    .line 2148
    :cond_1
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed or start canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2155
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2156
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v2, v3, :cond_2

    .line 2162
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v4, "DeviceControllerDidFailNotification"

    invoke-virtual {v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2163
    .local v0, "didFailNotification":Landroid/content/Intent;
    const-string v3, "INTENT_EXTRA_ERROR"

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2165
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2168
    .end local v0    # "didFailNotification":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2170
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->doStop()V

    .line 2173
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2174
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v4, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2175
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceController "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did stop because of connexion error or cancel (error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    const-string v4, "DeviceControllerDidStopNotification"

    invoke-virtual {v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2181
    .local v1, "didStopNotification":Landroid/content/Intent;
    const-string v3, "INTENT_EXTRA_ERROR"

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2182
    const-string v3, "INTENT_SOURCE_UUID"

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2184
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2185
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$5;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v3, v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method
