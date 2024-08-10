.class public Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;
.super Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;
.source "PreviewActivity.java"


# static fields
.field private static final EXTRA_VIDEO_PATH_LIST:Ljava/lang/String; = "EXTRA_VIDEO_PATH_LIST"

.field public static final PREVIEW_ERROR_REQUEST_CODE:I = 0x64

.field private static final REQUEST_FLIGHT_DIRECTOR_START_TRIAL:I = 0x1


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mButtonLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEditButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExportButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLockView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mToolbarView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    .line 80
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;-><init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mExportButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mLockView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mToolbarView:Landroid/view/View;

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_VIDEO_PATH_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    sparse-switch p1, :sswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :sswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :sswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->finish()V

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 131
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v2, 0x7f0c004e

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_VIDEO_PATH_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mVideoPathList:Ljava/util/ArrayList;

    .line 136
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->resetParam(Landroid/content/Context;)V

    .line 137
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDataFilePaths(Ljava/util/ArrayList;)V

    .line 140
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->newInstance()Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    .line 141
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mDataProcessingListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->setOnDataProcessingListner(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;)V

    .line 142
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPlaybackListener:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;->setPlaybackListener(Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 144
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0a036f

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mPreviewFragment:Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 148
    const v2, 0x7f0a037a

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mToolbarView:Landroid/view/View;

    .line 149
    const v2, 0x7f0a0370

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mButtonLayout:Landroid/view/View;

    .line 150
    const v2, 0x7f0a0379

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mTitleView:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f0a036b

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 152
    const v2, 0x7f0a036e

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mExportButton:Landroid/widget/Button;

    .line 153
    const v2, 0x7f0a036d

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mEditButton:Landroid/widget/Button;

    .line 154
    const v2, 0x7f0a036c

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mLockView:Landroid/widget/ImageView;

    .line 157
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$3;-><init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mExportButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$4;-><init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mEditButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;-><init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mButtonLayout:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 185
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 186
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mExportButton:Landroid/widget/Button;

    invoke-static {p0, v2, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 187
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mEditButton:Landroid/widget/Button;

    invoke-static {p0, v2, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->onResume()V

    .line 193
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->resetParam(Landroid/content/Context;)V

    .line 194
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mVideoPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDataFilePaths(Ljava/util/ArrayList;)V

    .line 195
    return-void
.end method
