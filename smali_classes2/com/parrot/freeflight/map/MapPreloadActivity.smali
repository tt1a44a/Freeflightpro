.class public Lcom/parrot/freeflight/map/MapPreloadActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MapPreloadActivity.java"


# static fields
.field private static final MAP_PRELOAD_TUTO_DISPLAYED:Ljava/lang/String; = "mapPreloadTutoDisplayed"

.field private static final MAP_PRELOAD_TUTO_REQUEST_CODE:I = 0x0

.field private static final MAX_PROGRESS_VALUE:I = 0x2710

.field private static final SAVED_MAP_DATA_KEY:Ljava/lang/String; = "saved map data"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "mapPreloadSharedPreferences"


# instance fields
.field private mCancelSearchButton:Landroid/widget/ImageButton;

.field private mCenterButton:Landroid/widget/ImageButton;

.field private mHomePositionAvailable:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mPreloadAvailable:Z

.field private final mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

.field private mPreloadProgress:Landroid/view/View;

.field private mPreloadProgressText:Landroid/widget/TextView;

.field private mPreloadProgressValue:Landroid/graphics/drawable/ClipDrawable;

.field private mPreloadRunning:Z

.field private mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

.field private final mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;

.field private mSaveMapButton:Landroid/widget/Button;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchHintImage:Landroid/widget/ImageView;

.field private final mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSearchProgress:Landroid/widget/ProgressBar;

.field private mSearchRunning:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private mSubtitle:Landroid/view/View;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$1;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 82
    new-instance v0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$2;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    .line 110
    new-instance v0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$3;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mHomePositionAvailable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mHomePositionAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->searchStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->searchEnded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/MapPreloadActivity;->displaySearch(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/map/PreloadMapManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->preloadStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadRunning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadAvailable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchRunning:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->preloadEnded()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/graphics/drawable/ClipDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressValue:Landroid/graphics/drawable/ClipDrawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method private displaySearch(Z)V
    .locals 4
    .param p1, "display"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 309
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mTitle:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSubtitle:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchHintImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    return-void

    :cond_0
    move v0, v2

    .line 309
    goto :goto_0

    :cond_1
    move v0, v2

    .line 310
    goto :goto_1

    :cond_2
    move v0, v2

    .line 311
    goto :goto_2

    :cond_3
    move v0, v1

    .line 312
    goto :goto_3

    :cond_4
    move v0, v1

    .line 313
    goto :goto_4

    :cond_5
    move v2, v1

    .line 314
    goto :goto_5
.end method

.method private preloadEnded()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 388
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadRunning:Z

    if-eqz v0, :cond_0

    .line 389
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadRunning:Z

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mHomePositionAvailable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_0
    return-void
.end method

.method private preloadStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadRunning:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadRunning:Z

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressValue:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressText:Landroid/widget/TextView;

    const v1, 0x7f1105c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    :cond_0
    return-void
.end method

.method private searchEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchRunning:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchRunning:Z

    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadAvailable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    :cond_0
    return-void
.end method

.method private searchStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchRunning:Z

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchRunning:Z

    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "mapPreloadTutoDisplayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v4, 0x7f0c0044

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->setContentView(I)V

    .line 136
    const v4, 0x7f0a029e

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRootView:Landroid/view/ViewGroup;

    .line 137
    const v4, 0x7f0a048c

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mTitle:Landroid/view/View;

    .line 138
    const v4, 0x7f0a048b

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSubtitle:Landroid/view/View;

    .line 139
    const v4, 0x7f0a0087

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 140
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v4, 0x7f0a008c

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 141
    const v4, 0x7f0a0137

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 142
    const v4, 0x7f0a0089

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    .line 143
    const v4, 0x7f0a008a

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    .line 144
    const v4, 0x7f0a008b

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    .line 145
    const v4, 0x7f0a029f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgress:Landroid/view/View;

    .line 146
    const v4, 0x7f0a01fd

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    .local v3, "preloadProgressValueImage":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ClipDrawable;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressValue:Landroid/graphics/drawable/ClipDrawable;

    .line 148
    const v4, 0x7f0a048a

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadProgressText:Landroid/widget/TextView;

    .line 149
    const v4, 0x7f0a0088

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 150
    .local v1, "cancelPreloadButton":Landroid/widget/ImageButton;
    const v4, 0x7f0a01fe

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchHintImage:Landroid/widget/ImageView;

    .line 151
    const v4, 0x7f0a01ff

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchProgress:Landroid/widget/ProgressBar;

    .line 153
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getSmartLocationManager()Lcom/parrot/freeflight/location/SmartLocationManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 156
    new-instance v4, Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v6, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-direct {v4, p0, v5, v6}, Lcom/parrot/freeflight/piloting/RelativePositionController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "mapState":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 160
    const-string v4, "saved map data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 163
    :cond_0
    new-instance v4, Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/map/MapViewFactory;->create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/parrot/freeflight/map/PreloadMapManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/map/IMapView;)V

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    .line 164
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/parrot/freeflight/map/IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 165
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v4, v7}, Lcom/parrot/freeflight/map/PreloadMapManager;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/map/PreloadMapManager;->init(Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    .line 169
    new-instance v4, Lcom/parrot/freeflight/map/MapPreloadActivity$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$4;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/map/MapPreloadActivity$5;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$5;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/map/MapPreloadActivity$6;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$6;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/map/MapPreloadActivity$7;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$7;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/parrot/freeflight/map/MapPreloadActivity$8;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$8;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 215
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    new-instance v5, Lcom/parrot/freeflight/map/MapPreloadActivity$9;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$9;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v4, Lcom/parrot/freeflight/map/MapPreloadActivity$10;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/map/MapPreloadActivity$10;-><init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 233
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCancelSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchHintImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchHintImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f0500a8

    invoke-static {p0, v5, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 241
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSaveMapButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    const-string v4, "mapPreloadSharedPreferences"

    invoke-virtual {p0, v4, v7}, Lcom/parrot/freeflight/map/MapPreloadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 244
    iget-object v4, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "mapPreloadTutoDisplayed"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 245
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4, v7}, Lcom/parrot/freeflight/map/MapPreloadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->stop()V

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onDestroy()V

    .line 281
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 282
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onLowMemory()V

    .line 287
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onLowMemory()V

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->cancelPreload()V

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->removePreloadListener()V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->removeSearchListener()V

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->pause()V

    .line 274
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 275
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->resume()V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->setPreloadListener(Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;)V

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->setSearchListener(Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 256
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "mapState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity;->mPreloadMapManager:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->getMapView()Lcom/parrot/freeflight/map/IMapView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/map/IMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    const-string v1, "saved map data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    return-void
.end method
