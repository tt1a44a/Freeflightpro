.class public Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;
.super Landroid/widget/LinearLayout;
.source "FollowMeLockTutoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;
    }
.end annotation


# static fields
.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "FollowMeLockTutoView"

.field private static final SHARED_PREFERENCES_TUTO_DISPLAYED_KEY:Ljava/lang/String; = "FollowMeLockTutoView.tutoDisplayed"


# instance fields
.field private final mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoView:Landroid/widget/VideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoViewHolderCallback:Landroid/view/SurfaceHolder$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 111
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$3;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoViewHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 37
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->initViewParams(Landroid/content/Context;)V

    .line 38
    const v1, 0x7f0c008b

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v1, 0x7f0a007a

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, "gotItButton":Landroid/widget/Button;
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    const v1, 0x7f0a051c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoView:Landroid/widget/VideoView;

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoViewHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoView:Landroid/widget/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->initVideoPlayer(Landroid/content/Context;)V

    .line 55
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private initVideoPlayer(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "followme_angle_lock.mp4"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 71
    .local v7, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v7    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initViewParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->setGravity(I)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->setOrientation(I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    .local v0, "padding":I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->setPadding(IIII)V

    .line 65
    const v1, 0x7f050129

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->setBackgroundResource(I)V

    .line 66
    return-void
.end method

.method public static shouldDisplayTuto(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v2, "FollowMeLockTutoView"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "FollowMeLockTutoView.tutoDisplayed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mVideoViewHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 86
    return-void
.end method

.method public markTutoDisplayed()V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    const-string v3, "FollowMeLockTutoView"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 96
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "FollowMeLockTutoView.tutoDisplayed"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "FollowMeLockTutoView.tutoDisplayed"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
