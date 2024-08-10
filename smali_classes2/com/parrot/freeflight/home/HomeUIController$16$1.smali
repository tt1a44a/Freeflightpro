.class Lcom/parrot/freeflight/home/HomeUIController$16$1;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController$16;->onDeviceClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/home/HomeUIController$16;

.field final synthetic val$device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController$16;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/home/HomeUIController$16;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$16$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$16;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$16$1;->val$device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordNeeded()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$16;

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16$1;->val$device:Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2600(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Z)V

    .line 768
    return-void
.end method
