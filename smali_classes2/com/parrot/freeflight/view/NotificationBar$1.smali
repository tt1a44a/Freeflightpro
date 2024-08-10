.class Lcom/parrot/freeflight/view/NotificationBar$1;
.super Ljava/lang/Object;
.source "NotificationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/NotificationBar;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/NotificationBar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/NotificationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/NotificationBar;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/view/NotificationBar$1;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar$1;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v0}, Lcom/parrot/freeflight/view/NotificationBar;->access$000(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/view/NotificationBar$1;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-static {v0}, Lcom/parrot/freeflight/view/NotificationBar;->access$000(Lcom/parrot/freeflight/view/NotificationBar;)Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/view/NotificationBar$1;->this$0:Lcom/parrot/freeflight/view/NotificationBar;

    invoke-virtual {v1}, Lcom/parrot/freeflight/view/NotificationBar;->getInAppNotification()Lcom/parrot/freeflight/notification/InAppNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/view/NotificationBar$NotificationBarListener;->onClick(Lcom/parrot/freeflight/notification/InAppNotification;)V

    .line 105
    :cond_0
    return-void
.end method
