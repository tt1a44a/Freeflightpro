.class Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$2;
.super Landroid/content/BroadcastReceiver;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 872
    const-string/jumbo v1, "skyControllerDeviceControllerNotificationDictionaryChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 874
    .local v0, "dictionary":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 875
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$2;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$600(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    .line 878
    .end local v0    # "dictionary":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
