.class Lcom/parrot/freeflight/home/HomeUIController$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeUIController.java"


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
    .line 422
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$1;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$1;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$1;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$1;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$200(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$1;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 428
    return-void
.end method
