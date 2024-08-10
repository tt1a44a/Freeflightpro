.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$2;
.super Ljava/lang/Object;
.source "FollowMeLockTutoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 104
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 108
    return-void
.end method
