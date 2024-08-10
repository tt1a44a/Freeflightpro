.class Lcom/parrot/freeflight/home/HomeUIController$32;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailed(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 1914
    const-string v0, "FF4.Home"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    const-string v0, "FF4.Home"

    const-string v1, "onAuthFailed: retry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$2600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V

    .line 1923
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSecured()Z

    move-result v3

    .line 1920
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSignalLevel()I

    move-result v5

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZZ)V

    .line 1919
    invoke-static {v8, v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3602(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1921
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V

    goto :goto_0
.end method
