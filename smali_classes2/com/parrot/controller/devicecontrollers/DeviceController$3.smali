.class Lcom/parrot/controller/devicecontrollers/DeviceController$3;
.super Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field final synthetic val$d2cPort:I


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iput p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->val$d2cPort:I

    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveJson(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 6
    .param p1, "dataRx"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1061
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1065
    .local v1, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$400(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->updateFrom(Lorg/json/JSONObject;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 1067
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1069
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1070
    .local v3, "status":I
    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1079
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :cond_0
    :goto_0
    return-object v1

    .line 1074
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1077
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0
.end method

.method public onSendJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1010
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1014
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    iget v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->val$d2cPort:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1015
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_NAME_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 1016
    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/ControllerInfo;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_TYPE_KEY:Ljava/lang/String;

    .line 1018
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/ControllerInfo;->type()Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1029
    :try_start_1
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$3;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1039
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1043
    :try_start_2
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_QOS_MODE_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1044
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

    const v3, 0xd6dc

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1045
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

    const v3, 0xd6dd

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1046
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SUPPORTED_METADATA_VERSION_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1054
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error building json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1032
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 1034
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error building json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1048
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 1050
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error building json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
