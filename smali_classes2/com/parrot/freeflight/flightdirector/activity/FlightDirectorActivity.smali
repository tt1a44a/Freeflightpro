.class public Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;
.super Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;
.source "FlightDirectorActivity.java"


# static fields
.field public static final PREVIEW_ERROR_REQUEST_CODE:I = 0x64


# instance fields
.field private mBottomBar:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCloseButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDurationFragment:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

.field private mExportButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightDataFragment:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

.field private mHasChangedScreenSinceLastError:Z

.field private mMomentsFragment:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

.field private mMusicFragment:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

.field private mNextButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

.field private mStyleFragment:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mHasChangedScreenSinceLastError:Z

    .line 55
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mExportButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mHasChangedScreenSinceLastError:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mHasChangedScreenSinceLastError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mBottomBar:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mDurationFragment:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->setFragment(Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mStyleFragment:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mMusicFragment:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mMomentsFragment:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mFlightDataFragment:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    return-object v0
.end method

.method private initBottomBar()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mBottomBar:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->setOnNavigationItemSelectedListener(Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mBottomBar:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->selectTab(I)V

    .line 198
    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private setFragment(Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 202
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0a011c

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 203
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->getTitleRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    instance-of v1, p1, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mExportButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mExportButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mHasChangedScreenSinceLastError:Z

    .line 110
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->setContentView(I)V

    .line 119
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mDurationFragment:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    .line 120
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mStyleFragment:Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    .line 121
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mMusicFragment:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .line 122
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mMomentsFragment:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .line 123
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mFlightDataFragment:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    .line 124
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->setOnDataProcessingListner(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;)V

    .line 129
    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mBottomBar:Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    .line 130
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mTitleView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mCloseButton:Landroid/widget/ImageButton;

    .line 132
    const v0, 0x7f0a011e

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mNextButton:Landroid/widget/Button;

    .line 133
    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mExportButton:Landroid/widget/Button;

    .line 136
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->initBottomBar()V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$2;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mExportButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$4;-><init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 161
    return-void
.end method
