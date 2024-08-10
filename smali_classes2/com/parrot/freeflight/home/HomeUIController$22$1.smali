.class Lcom/parrot/freeflight/home/HomeUIController$22$1;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController$22;->onClick(Lcom/parrot/freeflight/notification/InAppNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/home/HomeUIController$22;

.field final synthetic val$notification:Lcom/parrot/freeflight/notification/InAppNotification;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController$22;Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/home/HomeUIController$22;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$22;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->val$notification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 2
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$22;

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->val$notification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-virtual {v1}, Lcom/parrot/freeflight/notification/InAppNotification;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$22;

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$22$1;->val$notification:Lcom/parrot/freeflight/notification/InAppNotification;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->removeNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 879
    :cond_0
    return-void
.end method
