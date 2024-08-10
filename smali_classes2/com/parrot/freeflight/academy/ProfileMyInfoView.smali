.class public Lcom/parrot/freeflight/academy/ProfileMyInfoView;
.super Landroid/widget/FrameLayout;
.source "ProfileMyInfoView.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;
    }
.end annotation


# instance fields
.field private final mAuthentificationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

.field private final mAvatarImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEmail:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLastName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const v1, 0x7f0c0054

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v1, 0x7f0a0339

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mAvatarImage:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f0a033d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mFirstName:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0a033f

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mLastName:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0a0341

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mEmail:Landroid/widget/TextView;

    .line 59
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mAuthentificationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->setDefaultAvatar()V

    .line 63
    const v1, 0x7f0a033b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "editAvatarButton":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;-><init>(Lcom/parrot/freeflight/academy/ProfileMyInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileMyInfoView;)Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mListener:Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;

    return-object v0
.end method

.method private setAvatar(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 125
    .local v0, "bitmapSize":I
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 127
    return-void
.end method

.method private setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 3
    .param p1, "roundedBitmapDrawable"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 136
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 137
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method private setDefaultAvatar()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 116
    return-void
.end method


# virtual methods
.method public setOnEditAvatarClickedListener(Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mListener:Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;

    .line 77
    return-void
.end method

.method public updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public updateUserInfo(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mFirstName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mAuthentificationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mLastName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mAuthentificationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;->getUser()Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;

    move-result-object v0

    .line 95
    .local v0, "user":Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
