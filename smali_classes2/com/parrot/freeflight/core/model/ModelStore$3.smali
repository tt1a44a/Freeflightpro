.class Lcom/parrot/freeflight/core/model/ModelStore$3;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;


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
    .line 154
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .prologue
    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    .line 158
    .local v0, "remoteCtrl":Lcom/parrot/freeflight/user/UserRemoteCtrl;
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 160
    const-string v1, "FF4.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRemoteCtrl changed: was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

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

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1102(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "FF4.Model.Store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRemoteCtrl changed: closing old model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 168
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 170
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1202(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 171
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$100(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 172
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1400(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 174
    :cond_0
    if-eqz v0, :cond_1

    .line 176
    const-string v1, "FF4.Model.Store"

    const-string v2, "UserRemoteCtrl changed: creating new model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v2, Lcom/parrot/freeflight/core/model/LocalStorage;

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v3}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 179
    invoke-static {v4}, Lcom/parrot/freeflight/core/model/ModelStore;->access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v4

    .line 178
    invoke-static {v2, v3, v4}, Lcom/parrot/freeflight/core/model/ModelFactory;->createRemoteModel(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1202(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1500(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 182
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1400(Lcom/parrot/freeflight/core/model/ModelStore;)V

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/Model;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v1}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$3;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 188
    :cond_1
    return-void
.end method
