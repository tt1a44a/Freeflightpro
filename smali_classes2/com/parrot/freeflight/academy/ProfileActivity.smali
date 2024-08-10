.class public Lcom/parrot/freeflight/academy/ProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;,
        Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;,
        Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    }
.end annotation


# static fields
.field private static final MENU_DELETE_ACCOUNT:I = 0x1

.field private static final MENU_LOGOUT:I = 0x2

.field private static final REQUEST_CODE_DELETE_ACCOUNT:I = 0x1

.field private static final REQUEST_CODE_LOAD_IMAGE:I = 0x2

.field public static final RESULT_FINISH:I = 0x1


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private final mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

.field private mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAvatarRequestDone:Z

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

.field private mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 80
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 86
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$1;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onPilotRequestSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/ProfileActivity;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestDone:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onAvatarUpdateSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onAvatarRequestResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 443
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 446
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 448
    :cond_0
    return-void
.end method

.method private getAvatar()Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method private onAvatarRequestResponse(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestDone:Z

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->updateUserAvatar()V

    .line 371
    return-void
.end method

.method private onAvatarUpdateSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->updateUserAvatar()V

    .line 363
    return-void
.end method

.method private onPilotRequestSucceed(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 374
    check-cast p1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .line 375
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updatePilotInfos(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V

    .line 378
    :cond_0
    return-void
.end method

.method private setAvatar(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 257
    .local v0, "bitmapSize":I
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 259
    return-void
.end method

.method private setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 263
    return-void
.end method

.method private setNewAvatar(Ljava/lang/String;)V
    .locals 4
    .param p1, "picturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 238
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    .local v1, "profileImageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 241
    invoke-static {v1, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->updateUserInfos()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v2, "Avatar"

    const-string v3, "Error, can\'t set photo as avatar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAvatarFromPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "avatarPicturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->updateAvatar(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->setNewAvatar(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->access$300(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileAboutView;

    return-object v0
.end method

.method public getMyInfoView()Lcom/parrot/freeflight/academy/ProfileMyInfoView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->access$300(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    if-ne p1, v4, :cond_0

    if-ne p2, v4, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->finish()V

    .line 202
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 203
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, "selectedImage":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 206
    .local v2, "filePathColumn":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 208
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 212
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "picturePath":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/parrot/freeflight/academy/ProfileActivity;->updateAvatarFromPath(Ljava/lang/String;)V

    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 216
    if-eqz v8, :cond_1

    .line 217
    invoke-direct {p0, v8}, Lcom/parrot/freeflight/academy/ProfileActivity;->setNewAvatar(Ljava/lang/String;)V

    .line 222
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "picturePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->cancelAllRequests()V

    .line 164
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v6, 0x7f0c004f

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->setContentView(I)V

    .line 103
    const v6, 0x7f0a02c6

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mRootLayout:Landroid/view/View;

    .line 104
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    .line 105
    .local v2, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 106
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 108
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 109
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v4

    .line 110
    .local v4, "profile":Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    if-nez v4, :cond_0

    .line 111
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestProfile()V

    .line 113
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    iget-object v8, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v6, v7, v8}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 115
    const v6, 0x7f0a0505

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 116
    .local v5, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 117
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 122
    :cond_1
    const v6, 0x7f0a035a

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 123
    .local v3, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v6, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;Lcom/parrot/freeflight/academy/ProfileActivity$1;)V

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    .line 125
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 127
    const v6, 0x7f0a0419

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 128
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 130
    const v6, 0x7f0a0053

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 132
    .local v1, "backButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/parrot/freeflight/academy/ProfileActivity$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$2;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const v6, 0x7f0a04c8

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 140
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 141
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/academy/ProfileActivity$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$3;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    const v0, 0x7f1105de

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 171
    const/4 v0, 0x2

    const v1, 0x7f1105f3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 172
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 438
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 179
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->disconnect()V

    .line 186
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->disconnect()V

    .line 188
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->finish()V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 158
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 159
    return-void
.end method
