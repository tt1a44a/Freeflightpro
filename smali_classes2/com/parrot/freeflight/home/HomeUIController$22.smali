.class Lcom/parrot/freeflight/home/HomeUIController$22;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/util/PermissionChecker;)V
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
    .line 853
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 5
    .param p1, "notification"    # Lcom/parrot/freeflight/notification/InAppNotification;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 862
    sget-object v0, Lcom/parrot/freeflight/home/HomeUIController$40;->$SwitchMap$com$parrot$freeflight$notification$InAppNotification$Type:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/notification/InAppNotification;->getType()Lcom/parrot/freeflight/notification/InAppNotification$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/notification/InAppNotification$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 888
    :goto_0
    return-void

    .line 864
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/notification/InAppNotification;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/offer/OfferActivity;->getStartingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 868
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/util/PermissionChecker;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f6

    aput v3, v2, v4

    const v3, 0x7f1104f7

    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController$22$1;

    invoke-direct {v4, p0, p1}, Lcom/parrot/freeflight/home/HomeUIController$22$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController$22;Lcom/parrot/freeflight/notification/InAppNotification;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    goto :goto_0

    .line 884
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$600(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/authentication/ConnectActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 862
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDismissClicked(Lcom/parrot/freeflight/notification/InAppNotification;)V
    .locals 2
    .param p1, "notification"    # Lcom/parrot/freeflight/notification/InAppNotification;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->removeNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 857
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/NotificationBar;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$22;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/notification/InAppNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/notification/InAppNotificationManager;->getNextNotification()Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/view/NotificationBar;->setNotification(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 858
    return-void
.end method
