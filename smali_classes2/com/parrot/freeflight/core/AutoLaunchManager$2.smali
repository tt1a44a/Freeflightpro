.class Lcom/parrot/freeflight/core/AutoLaunchManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 115
    return-void
.end method
