.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;
.super Landroid/support/v4/app/Fragment;
.source "DroneMemoryConfirmTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;


# static fields
.field private static final ARG_FILE_ITEM_ARRAY:Ljava/lang/String; = "fileItems"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDownloadButton:Landroid/widget/Button;

.field private mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private mTimeStringParserFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->applyUiTheme()V

    return-void
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010014

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0358

    const-string v2, "ERROR_FRAGMENT_TAG"

    .line 64
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 66
    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050055

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 211
    .local v1, "redColor":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 214
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 215
    .local v0, "productMainColor":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 216
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;
    .locals 6
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediaItems"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    array-length v4, p1

    new-array v1, v4, [Lcom/parrot/freeflight/media/model/FileItem;

    .line 50
    .local v1, "fileItems":[Lcom/parrot/freeflight/media/model/FileItem;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 51
    new-instance v4, Lcom/parrot/freeflight/media/model/FileItem;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/media/model/FileItem;-><init>(Lcom/parrot/freeflight/media/model/MediaItem;)V

    aput-object v4, v1, v3

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-direct {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;-><init>()V

    .line 54
    .local v2, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "fileItems"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 57
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v2
.end method

.method public static replaceFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0358

    const-string v2, "ERROR_FRAGMENT_TAG"

    .line 71
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HHmmssZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mTimeStringParserFormat:Ljava/text/SimpleDateFormat;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 25
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 86
    .local v5, "context":Landroid/content/Context;
    const v20, 0x7f0c001c

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0214

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 89
    .local v18, "previewImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0463

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 90
    .local v11, "flightDateText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0467

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 91
    .local v14, "flightLocationText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a044f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 92
    .local v7, "descriptionText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0067

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mDownloadButton:Landroid/widget/Button;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a005a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mCancelButton:Landroid/widget/Button;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v16

    check-cast v16, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .line 96
    .local v16, "mController":Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v15

    .line 98
    .local v15, "mAcademyManager":Lcom/parrot/freeflight/core/academy/AcademyManager;
    new-instance v20, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;Landroid/widget/ImageView;)V

    new-instance v21, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V

    new-instance v22, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->loadMedias(Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 128
    .local v4, "args":Landroid/os/Bundle;
    const-string v20, "fileItems"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, [Lcom/parrot/freeflight/media/model/FileItem;

    check-cast v20, [Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v17

    .line 133
    .local v17, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getDate()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mTimeStringParserFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getDate()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 136
    .local v6, "date":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v6    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getUUID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v19

    .line 142
    .local v19, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v19, :cond_1

    .line 143
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/core/academy/RunInformation;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 147
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    .end local v17    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v19    # "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    :cond_2
    const/4 v9, 0x0

    .line 152
    .local v9, "fileCount":I
    const-wide/16 v12, 0x0

    .line 153
    .local v12, "fileSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v10, v21, v20

    .line 155
    .local v10, "fileItem":Lcom/parrot/freeflight/media/model/FileItem;
    add-int/lit8 v9, v9, 0x1

    .line 156
    long-to-float v0, v12

    move/from16 v23, v0

    invoke-virtual {v10}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getSize()F

    move-result v24

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v12, v0

    .line 154
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 137
    .end local v9    # "fileCount":I
    .end local v10    # "fileItem":Lcom/parrot/freeflight/media/model/FileItem;
    .end local v12    # "fileSize":J
    .restart local v17    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :catch_0
    move-exception v8

    .line 138
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v8    # "e":Ljava/text/ParseException;
    .end local v17    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .restart local v9    # "fileCount":I
    .restart local v12    # "fileSize":J
    :cond_3
    const v20, 0x7f11021e

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$4;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mDownloadButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v20, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v20, v0

    new-instance v21, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$6;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V

    invoke-virtual/range {v20 .. v21}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a04cd

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 192
    invoke-static {v5, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    invoke-static {v5, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 194
    invoke-static {v5, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mDownloadButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->mRootView:Landroid/view/View;

    move-object/from16 v20, v0

    return-object v20
.end method
