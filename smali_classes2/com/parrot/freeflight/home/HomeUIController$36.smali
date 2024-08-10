.class Lcom/parrot/freeflight/home/HomeUIController$36;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/MediaCountCompat$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->startFwCompatInfoUpdate(Lcom/parrot/freeflight/core/model/DroneModel;)V
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
    .line 2170
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaListed(SS)V
    .locals 2
    .param p1, "photoCount"    # S
    .param p2, "videoCount"    # S

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->setPhotoCount(I)V

    .line 2175
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/model/DroneModel;->setVideoCount(I)V

    .line 2176
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$36;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$6300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/home/HomeUIController$36$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/home/HomeUIController$36$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController$36;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 2183
    :cond_0
    return-void
.end method
