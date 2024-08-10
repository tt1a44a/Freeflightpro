.class public Lcom/parrot/freeflight/registration/RegistrationPageFragment;
.super Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.source "RegistrationPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;,
        Lcom/parrot/freeflight/registration/RegistrationPageFragment$Status;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final FADE_DURATION:I = 0x3e8

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final LINK:Ljava/lang/String; = "link"

.field public static final NO_DRONE:I = 0x0

.field private static final POST_TAG:Ljava/lang/String; = "</u>"

.field private static final PRE_TAG:Ljava/lang/String; = "<u>"

.field public static final PROMOTION_ACTIVATED:I = 0x2

.field public static final PURCHASED:I = 0x1

.field public static final STARTING_TRIAL:I = 0xc

.field private static final TAG:Ljava/lang/String; = "RegistrationPageFrag"

.field private static final TITLE:Ljava/lang/String; = "title"

.field public static final TRIAL_INVALID:I = 0xa

.field public static final TRIAL_NOT_AVAILABLE:I = 0x3

.field public static final TRIAL_NOT_STARTED:I = 0xd

.field public static final TRIAL_VALID:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field private static final VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private mContentId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mContinueTrialButton:Landroid/widget/Button;

.field private mImageId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mInternetAvailable:Z

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLinkUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStartTimeMillis:I

.field private mStartTrialProgressBar:Landroid/widget/ProgressBar;

.field private mTitleId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mVideoId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoShown:Z

.field private mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$1;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    .line 104
    new-instance v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$2;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Lcom/google/android/youtube/player/YouTubePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    .param p1, "x1"    # Lcom/google/android/youtube/player/YouTubePlayer;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->onYouTubePlayerInitialized(Lcom/google/android/youtube/player/YouTubePlayer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->onNetworkChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mListener:Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoShown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/registration/RegistrationPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;IILjava/lang/String;)Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    .locals 3
    .param p0, "imageId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "videoId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "contentId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "linkUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    new-instance v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;-><init>()V

    .line 116
    .local v1, "fragment":Lcom/parrot/freeflight/registration/RegistrationPageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "image"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v2, "video"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v2, "content"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v2, "link"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v1
.end method

.method private onNetworkChanged(Z)V
    .locals 4
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetAvailable:Z

    .line 367
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v1, :cond_0

    .line 369
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetAvailable:Z

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v2, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    iget v3, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTimeMillis:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-boolean v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoShown:Z

    if-eqz v1, :cond_0

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoShown:Z

    .line 373
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->pause()V

    .line 374
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "RegistrationPageFrag"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onYouTubePlayerInitialized(Lcom/google/android/youtube/player/YouTubePlayer;)V
    .locals 3
    .param p1, "youTubePlayer"    # Lcom/google/android/youtube/player/YouTubePlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    iput-object p1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    sget-object v1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V

    .line 300
    iget-boolean v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetAvailable:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    iget v2, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTimeMillis:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    new-instance v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$4;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    new-instance v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$5;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlaybackEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V

    .line 363
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 211
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mListener:Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement RegistrationPageListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageId:I

    .line 133
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    .line 134
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mTitleId:I

    .line 135
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContentId:I

    .line 136
    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mLinkUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    const v17, 0x7f0c00e3

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 144
    .local v11, "rootView":Landroid/view/View;
    const v17, 0x7f0a0219

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    .line 145
    const v17, 0x7f0a04ae

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 146
    .local v15, "title":Landroid/widget/TextView;
    const v17, 0x7f0a04ac

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 147
    .local v4, "content":Landroid/widget/TextView;
    const v17, 0x7f0a04ad

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 148
    .local v9, "note":Landroid/widget/TextView;
    const v17, 0x7f0a0389

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    .line 149
    const v17, 0x7f0a00b4

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mTitleId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContentId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;

    invoke-direct/range {v18 .. v19}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$3;-><init>(Lcom/parrot/freeflight/registration/RegistrationPageFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-super/range {p0 .. p3}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v16

    .line 166
    .local v16, "youTubePlayerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 167
    const v17, 0x7f0a0173

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 168
    .local v7, "mediaFrame":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 171
    .end local v7    # "mediaFrame":Landroid/widget/FrameLayout;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 172
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "rawStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v13

    .line 174
    .local v13, "spannableString":Landroid/text/SpannableString;
    const-string v17, "<u>"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 175
    .local v14, "start":I
    const-string v17, "</u>"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 176
    .local v6, "end":I
    if-ltz v14, :cond_2

    if-lez v6, :cond_2

    .line 177
    const-string v17, "<u>"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v6, v6, v17

    .line 178
    new-instance v12, Landroid/text/style/URLSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 179
    .local v12, "span":Landroid/text/style/URLSpan;
    const/16 v17, 0x21

    move/from16 v0, v17

    invoke-virtual {v13, v12, v14, v6, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    invoke-virtual {v9}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v8

    .line 182
    .local v8, "movementMethod":Landroid/text/method/MovementMethod;
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v9}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v17

    if-eqz v17, :cond_1

    instance-of v0, v8, Landroid/text/method/LinkMovementMethod;

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 184
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 193
    .end local v6    # "end":I
    .end local v8    # "movementMethod":Landroid/text/method/MovementMethod;
    .end local v10    # "rawStr":Ljava/lang/String;
    .end local v12    # "span":Landroid/text/style/URLSpan;
    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .end local v14    # "start":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->updateStatus()V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 196
    .local v5, "context":Landroid/content/Context;
    invoke-static {v5, v15}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 197
    invoke-static {v5, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 198
    invoke-static {v5, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-object v11

    .line 187
    .end local v5    # "context":Landroid/content/Context;
    .restart local v6    # "end":I
    .restart local v10    # "rawStr":Ljava/lang/String;
    .restart local v13    # "spannableString":Landroid/text/SpannableString;
    .restart local v14    # "start":I
    :cond_2
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    .end local v6    # "end":I
    .end local v10    # "rawStr":Ljava/lang/String;
    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .end local v14    # "start":I
    :cond_3
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    iput-boolean v3, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetAvailable:Z

    .line 236
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v1, :cond_1

    .line 240
    iput-boolean v3, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoShown:Z

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTimeMillis:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 252
    :cond_1
    invoke-super {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onPause()V

    .line 253
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "RegistrationPageFrag"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onResume()V

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mVideoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    const v0, 0x7f11080e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 228
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->setUserVisibleHint(Z)V

    .line 259
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    .line 262
    :cond_0
    return-void
.end method

.method public updateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 265
    const/16 v0, 0xd

    .line 266
    .local v0, "status":I
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mListener:Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mListener:Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;->getStatus()I

    move-result v0

    .line 270
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    :goto_0
    return-void

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 287
    :pswitch_4
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mStartTrialProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/parrot/freeflight/registration/RegistrationPageFragment;->mContinueTrialButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
