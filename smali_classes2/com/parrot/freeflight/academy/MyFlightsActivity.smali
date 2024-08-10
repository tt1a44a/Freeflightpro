.class public Lcom/parrot/freeflight/academy/MyFlightsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyFlightsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;
    }
.end annotation


# instance fields
.field private mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private final mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAcademyRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

.field private mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCrashCountImageView:Landroid/widget/ImageView;

.field private final mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHourMinuteSecondStringFormat:Ljava/lang/String;

.field private final mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinuteSecondStringFormat:Ljava/lang/String;

.field private mMyFlightsAvatarImageView:Landroid/widget/ImageView;

.field private mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

.field private mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

.field private mMyFlightsTimeTextView:Landroid/widget/TextView;

.field private mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mSecondStringFormat:Ljava/lang/String;

.field private mStatusBar:Landroid/view/View;

.field private mTimeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 73
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 75
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 78
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 81
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 84
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->updateProfileInfos()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->avatarRequestFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/widget/SwipeListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mRootLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/MyFlightsActivity;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
    .param p1, "x1"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->avatarRequestSucceed(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/MyFlightsActivity;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->pilotRequestSucceed(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/MyFlightsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->myFlightsRequestSucceed(Ljava/util/List;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mStatusBar:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductTileColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 365
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 369
    :cond_0
    return-void
.end method

.method private avatarRequestFailed()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method private avatarRequestSucceed(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 1
    .param p1, "result"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    return-void
.end method

.method private myFlightsRequestSucceed(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->clear()V

    .line 299
    invoke-static {}, Lcom/parrot/freeflight/utils/ProductsUtils;->getSupportedProductList()Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "supportedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .line 301
    .local v0, "run":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getProductId()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->notifyDataSetChanged()V

    .line 306
    return-void
.end method

.method private pilotRequestSucceed(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V
    .locals 0
    .param p1, "result"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->updatePilotInfos(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V

    .line 295
    return-void
.end method

.method private updatePilotInfos(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V
    .locals 14
    .param p1, "pilot"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 233
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->getStatistics()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;

    move-result-object v5

    .line 236
    .local v5, "stats":Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;
    invoke-virtual {v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v6

    .line 238
    .local v6, "timeTotal":D
    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double v8, v6, v8

    double-to-int v2, v8

    .line 239
    .local v2, "hours":I
    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    div-double v8, v6, v8

    double-to-int v8, v8

    rem-int/lit8 v3, v8, 0x3c

    .line 240
    .local v3, "minutes":I
    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v8, v6, v8

    double-to-int v8, v8

    rem-int/lit8 v4, v8, 0x3c

    .line 242
    .local v4, "seconds":I
    if-lez v2, :cond_0

    .line 243
    iget-object v8, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mHourMinuteSecondStringFormat:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "durationString":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v5}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v0

    .line 253
    .local v0, "crashCount":I
    iget-object v8, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f11044a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 244
    .end local v0    # "crashCount":I
    .end local v1    # "durationString":Ljava/lang/String;
    :cond_0
    if-lez v3, :cond_1

    .line 245
    iget-object v8, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMinuteSecondStringFormat:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "durationString":Ljava/lang/String;
    goto :goto_0

    .line 247
    .end local v1    # "durationString":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mSecondStringFormat:Ljava/lang/String;

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "durationString":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateProfileInfos()V
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 224
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 225
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 226
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    return-void

    .line 225
    .end local v0    # "visible":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v10, 0x7f0c0048

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->setContentView(I)V

    .line 119
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    .line 120
    .local v2, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 121
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 123
    const v10, 0x7f0a02c5

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mRootLayout:Landroid/view/View;

    .line 124
    const v10, 0x7f0a04fb

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 125
    .local v8, "titleTextView":Landroid/widget/TextView;
    const v10, 0x7f0a02d0

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mStatusBar:Landroid/view/View;

    .line 126
    const v10, 0x7f0a0093

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 127
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v10, 0x7f0a04fc

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    .line 128
    const v10, 0x7f0a04fa

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    .line 129
    const v10, 0x7f0a04f9

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    .line 130
    const v10, 0x7f0a0237

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    .line 131
    const v10, 0x7f0a02ea

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/academy/widget/SwipeListView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .line 132
    const v10, 0x7f0a023c

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    .line 133
    const v10, 0x7f0a023b

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 136
    .local v6, "resources":Landroid/content/res/Resources;
    const v10, 0x7f070064

    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 137
    .local v3, "defaultAvatar":Landroid/graphics/Bitmap;
    const v10, 0x7f0602c8

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 138
    .local v1, "bitmapSize":I
    invoke-static {v3, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 139
    invoke-static {v6, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 140
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const v11, 0x7f0602c8

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 141
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 142
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 143
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-static {p0, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 146
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 148
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 150
    const v10, 0x7f110464

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "hourStr":Ljava/lang/String;
    const v10, 0x7f110465

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "minStr":Ljava/lang/String;
    const v10, 0x7f110468

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "secStr":Ljava/lang/String;
    new-instance v10, Lcom/parrot/freeflight/academy/MyFlightsActivity$4;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$4;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x7f050018

    invoke-static {p0, v11, v12}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x7f050018

    invoke-static {p0, v11, v12}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mHourMinuteSecondStringFormat:Ljava/lang/String;

    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMinuteSecondStringFormat:Ljava/lang/String;

    .line 168
    iput-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mSecondStringFormat:Ljava/lang/String;

    .line 170
    new-instance v10, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 171
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v11, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;

    invoke-direct {v11, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 177
    new-instance v10, Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    invoke-direct {v10, v11, v12}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;)V

    iput-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    .line 178
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    new-instance v11, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;

    invoke-direct {v11, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v10, v11}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    const v10, 0x7f0a02a9

    invoke-virtual {p0, v10}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 195
    .local v9, "userInfoBar":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 196
    new-instance v10, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 360
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 275
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 276
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->finish()V

    .line 270
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->syncRunList()V

    .line 260
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 261
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->resetUnreadFlightCount()V

    .line 282
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 283
    return-void
.end method
