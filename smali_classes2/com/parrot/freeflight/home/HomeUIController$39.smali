.class Lcom/parrot/freeflight/home/HomeUIController$39;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->startNotificationUpdate()V
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
    .line 2336
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$39;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$39;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$6600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2339
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$39;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/NotificationBar;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$39;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->getNextNotification()Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/NotificationBar;->setNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 2340
    return-void
.end method
