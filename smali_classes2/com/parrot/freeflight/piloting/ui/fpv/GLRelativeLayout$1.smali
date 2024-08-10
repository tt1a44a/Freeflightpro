.class Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;
.super Landroid/os/Handler;
.source "GLRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x21

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, "now":J
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-static {v2, v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->access$002(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;J)J

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    return-void
.end method
