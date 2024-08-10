.class Lcom/parrot/freeflight/core/model/ModelStore$5;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/ModelStore;
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
    .line 316
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$5;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 319
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$5;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$5;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    .line 321
    .local v1, "userRemoteCtrl":Lcom/parrot/freeflight/user/UserRemoteCtrl;
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$5;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "modelSoftwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore$5;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserRemoteCtrlVersion(Ljava/lang/String;)V

    .line 326
    .end local v0    # "modelSoftwareVersion":Ljava/lang/String;
    .end local v1    # "userRemoteCtrl":Lcom/parrot/freeflight/user/UserRemoteCtrl;
    :cond_0
    return-void
.end method
