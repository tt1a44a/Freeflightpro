.class Lcom/parrot/freeflight/core/model/ModelStore$2;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/model/ModelStore;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/ModelStore;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 7

    .prologue
    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserSettings;->getUserDrone()Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v0

    .line 118
    .local v0, "drone":Lcom/parrot/freeflight/user/UserDrone;
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 120
    const-string v1, "FF4.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserDrone changed: was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/ModelStore;->access$302(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "FF4.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserDrone changed: closing old model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$000(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$402(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$700(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    const-string v1, "FF4.Model.Store"

    const-string v2, "UserDrone changed: creating new model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v2, Lcom/parrot/freeflight/core/model/LocalStorage;

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 139
    invoke-static {v4}, Lcom/parrot/freeflight/core/model/ModelStore;->access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->access$900(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1000(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/Barometer;

    move-result-object v6

    .line 138
    invoke-static {v2, v3, v4, v5, v6}, Lcom/parrot/freeflight/core/model/ModelFactory;->createDroneModel(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$402(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$700(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/Model;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    if-nez v1, :cond_2

    .line 147
    const-string v1, "FF4.Model.Store"

    const-string v2, "UserDrone changed: new drone is null, create dummy model if there is one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v2, Lcom/parrot/freeflight/core/model/LocalStorage;

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;->getDefaultProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;->createModel(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/piloting/model/dummy/DummyModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$402(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$2;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$700(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 152
    :cond_2
    return-void
.end method
