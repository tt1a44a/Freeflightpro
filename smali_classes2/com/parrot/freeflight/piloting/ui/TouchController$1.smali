.class Lcom/parrot/freeflight/piloting/ui/TouchController$1;
.super Landroid/os/Handler;
.source "TouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/TouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/TouchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/TouchController;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$002(Lcom/parrot/freeflight/piloting/ui/TouchController;Z)Z

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$100(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$100(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;->onLongPressStarted()V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$002(Lcom/parrot/freeflight/piloting/ui/TouchController;Z)Z

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$202(Lcom/parrot/freeflight/piloting/ui/TouchController;F)F

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$302(Lcom/parrot/freeflight/piloting/ui/TouchController;F)F

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$100(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TouchController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/TouchController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController;->access$100(Lcom/parrot/freeflight/piloting/ui/TouchController;)Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/TouchController$LongPressListener;->onLongPressEnded()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
