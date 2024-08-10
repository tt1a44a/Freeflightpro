.class public Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "MusicFragment.java"


# static fields
.field private static final REQUEST_CODE_MUSIC:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddMusicButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLoaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMusicList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->addMusic()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->updateView()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->hideLoader()V

    return-void
.end method

.method private addMusic()V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :try_start_0
    const-string v1, "Select a File to Upload"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hideLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mLoaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mAddMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;-><init>()V

    .line 63
    .local v0, "fragment":Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;
    return-object v0
.end method

.method private showLoader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mLoaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mAddMusicButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private updateMusicList()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->showLoader()V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->requestSoundtracks(Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->setItems(Ljava/util/List;)V

    .line 248
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->hideLoader()V

    .line 249
    return-void
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 195
    const v0, 0x7f110226

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-super/range {p0 .. p3}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 152
    if-eqz p3, :cond_1

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "fileUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "musicPath":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 159
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 161
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_0
    move-object v8, v12

    .line 170
    .local v8, "destinationPath":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 171
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    invoke-static {v9}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->getFullMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/parrot/freeflight/flightdirector/util/FileUtils;->inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 173
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->addCustomMusic(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setMusicPath(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;->resetSoundtracks()V

    .line 181
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->updateMusicList()V

    .line 187
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "destinationPath":Ljava/lang/String;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v12    # "musicPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 174
    .restart local v1    # "fileUri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "destinationPath":Ljava/lang/String;
    .restart local v9    # "displayName":Ljava/lang/String;
    .restart local v12    # "musicPath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 175
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    .line 72
    const v4, 0x7f0c0099

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getSoundtrackManager()Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mSoundtrackManager:Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager;

    .line 77
    const v4, 0x7f0a0325

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 78
    const v4, 0x7f0a0324

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mLoaderView:Landroid/view/View;

    .line 79
    const v4, 0x7f0a031f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mAddMusicButton:Landroid/widget/ImageButton;

    .line 82
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mAddMusicButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    new-instance v1, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 96
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;

    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0600f5

    sget-object v6, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->VERTICAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-direct {v0, v4, v5, v6}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 102
    .local v0, "itemOffsetDecoration":Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
    new-instance v4, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .line 103
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getMusicPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->setSelectedMusic(Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->setSampleDuration(I)V

    .line 105
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 106
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 109
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    new-instance v5, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->setOnItemSelectedListener(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;)V

    .line 122
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->updateMusicList()V

    .line 128
    :goto_0
    return-object v3

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->updateView()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->recycle()V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onPause()V

    .line 134
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->stopPlayer()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onResume()V

    .line 140
    return-void
.end method

.method public stopPlayer()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->stopPlayer()V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mMusicAdapter:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method
