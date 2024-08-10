.class Lcom/parrot/freeflight/network/InternetStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "InternetStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/network/InternetStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/network/InternetStatusManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/network/InternetStatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/network/InternetStatusManager;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/network/InternetStatusManager$1;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$1;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-static {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->access$100(Lcom/parrot/freeflight/network/InternetStatusManager;)V

    .line 39
    return-void
.end method
