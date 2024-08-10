.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$3;
.super Ljava/lang/Object;
.source "FollowMeLockTutoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 121
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$3;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->access$000(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 116
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 125
    return-void
.end method
