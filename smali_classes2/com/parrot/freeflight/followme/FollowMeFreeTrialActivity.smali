.class public Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/registration/RegistrationPageFragment$RegistrationPageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;
    }
.end annotation


# static fields
.field private static final CONTENTS:[I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private static final IMAGES:[I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private static final LINK_URL:Ljava/lang/String; = "https://community.parrot.com/t5/Bebop-2-Knowledge-Base/Recommended-devices/ta-p/152420"

.field private static final PAGE_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FF4.FM.FreeTrialAct"

.field private static final TITLES:[I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private static final VIDEOS:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mBuyButton:Landroid/widget/Button;

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private final mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

.field private mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPagerAdapter:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mStartButton:Landroid/widget/Button;

.field private mStartingTrial:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 52
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->TITLES:[I

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->CONTENTS:[I

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->IMAGES:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fE37Jr1c-tM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    aput-object v4, v0, v3

    sput-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f110630
        0x7f110634
        0x7f110636
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x7f11062f
        0x7f110633
        0x7f110635
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x7f0702e0
        0x7f0702e1
        0x7f0702e2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$1;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    .line 113
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$2;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartingTrial:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->TITLES:[I

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->CONTENTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->displayTrialStartErrorIfAny(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->updateStartButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->IMAGES:[I

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->VIDEOS:[Ljava/lang/String;

    return-object v0
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void
.end method

.method private displayTrialStartErrorIfAny(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110160

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f11068d

    new-instance v2, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$8;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mRootLayout:Landroid/view/View;

    const v1, 0x7f110326

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStartButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPromotionActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public continueTrial()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->finish()V

    .line 247
    return-void
.end method

.method public getStatus()I
    .locals 2

    .prologue
    const/16 v0, 0xa

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getCpuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 282
    :goto_0
    :pswitch_0
    return v0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isPromotionActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    const/4 v0, 0x2

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->isTrialAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    const/4 v0, 0x3

    goto :goto_0

    .line 263
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartingTrial:Z

    if-eqz v1, :cond_4

    .line 264
    const/16 v0, 0xc

    goto :goto_0

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->checkTrialValid()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->checkRegistration()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 279
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 268
    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    .line 276
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v8, 0x7f050042

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v6, 0x7f0c0034

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->setContentView(I)V

    .line 128
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    .line 129
    .local v1, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeRegistrationManager()Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    .line 130
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 131
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/core/model/DroneModel;

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 133
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    invoke-virtual {v6}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->performRegistrationCheck()V

    .line 135
    const v6, 0x7f0a0288

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mRootLayout:Landroid/view/View;

    .line 136
    const v6, 0x7f0a0529

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 137
    const v6, 0x7f0a052e

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 138
    .local v5, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v6, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    .line 139
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;

    invoke-direct {v7, p0, v5}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 160
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mPagerAdapter:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$FollowMeRegistrationAdapter;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 162
    const v6, 0x7f0a046b

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f0a046a

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, "subtitle":Landroid/widget/TextView;
    const v6, 0x7f0a01ea

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 166
    .local v2, "icon":Landroid/widget/ImageView;
    const v6, 0x7f0a0078

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 167
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v6, 0x7f0a0058

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    .line 168
    const v6, 0x7f0a007b

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    .line 170
    new-instance v6, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$4;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$4;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    new-instance v7, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$5;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    new-instance v7, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$6;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 193
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 194
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 195
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 197
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {p0, v7, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {p0, v7, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 203
    iget-object v6, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$7;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$7;-><init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationManager:Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mFollowMeRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/followme/FollowMeRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 216
    invoke-direct {p0}, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->updateStartButton()V

    .line 217
    return-void
.end method
