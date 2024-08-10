.class public Lcom/parrot/freeflight/academy/ProfileAboutView;
.super Landroid/widget/FrameLayout;
.source "ProfileAboutView.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;


# instance fields
.field private final mAvatarImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAvatarProgress:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBiography:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBiographyContainer:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCrashes:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDrones:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDuration:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPilotings:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStatus:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f050018

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const v6, 0x7f0c0050

    invoke-static {p1, v6, p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v6, 0x7f0a01bf

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarImage:Landroid/widget/ImageView;

    .line 64
    const v6, 0x7f0a037e

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarProgress:Landroid/view/View;

    .line 66
    const v6, 0x7f0a02af

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "personalInfo":Landroid/view/View;
    const v6, 0x7f0a0497

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mName:Landroid/widget/TextView;

    .line 68
    const v6, 0x7f0a04be

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mStatus:Landroid/widget/TextView;

    .line 69
    const v6, 0x7f0a0439

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiography:Landroid/widget/TextView;

    .line 70
    const v6, 0x7f0a0263

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiographyContainer:Landroid/view/View;

    .line 72
    const v6, 0x7f0a02b1

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/academy/ProfileAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "pilotingInfo":Landroid/view/View;
    const v6, 0x7f0a04c5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDuration:Landroid/widget/TextView;

    .line 74
    const v6, 0x7f0a04a2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPilotings:Landroid/widget/TextView;

    .line 75
    const v6, 0x7f0a044a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mCrashes:Landroid/widget/TextView;

    .line 76
    const v6, 0x7f0a0458

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDrones:Landroid/widget/TextView;

    .line 78
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    const v6, 0x7f0a01ca

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 81
    .local v5, "timeImageView":Landroid/widget/ImageView;
    const v6, 0x7f0a01c5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "pilotingsImageView":Landroid/widget/ImageView;
    const v6, 0x7f0a01c0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "crashesImageView":Landroid/widget/ImageView;
    const v6, 0x7f0a01c1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    .local v1, "dronesImageView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v6, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setDefaultAvatar()V

    .line 91
    return-void
.end method

.method private setAvatar(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 198
    .local v0, "bitmapSize":I
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 200
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

    .line 208
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 209
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 210
    invoke-virtual {p1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method private setDefaultAvatar()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 189
    return-void
.end method

.method private setTextAndRemoveIfEmpty(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 1
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 114
    return-void
.end method

.method public updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V
    .locals 2
    .param p1, "roundedBitmapDrawable"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestDone"    # Z

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mAvatarProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 160
    :cond_1
    return-void
.end method

.method public updatePilotInfos(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V
    .locals 18
    .param p1, "pilot"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->getStatistics()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;

    move-result-object v10

    .line 126
    .local v10, "stats":Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 128
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v14

    double-to-long v12, v14

    .line 129
    .local v12, "timeTotal":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v14

    long-to-int v5, v14

    .line 130
    .local v5, "hours":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v14

    long-to-int v11, v14

    rem-int/lit8 v6, v11, 0x3c

    .line 131
    .local v6, "minutes":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v14

    long-to-int v11, v14

    rem-int/lit8 v9, v11, 0x3c

    .line 135
    .local v9, "seconds":I
    if-lez v5, :cond_1

    .line 136
    const v11, 0x7f110080

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "durationString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v8

    .line 144
    .local v8, "runs":I
    invoke-virtual {v10}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v2

    .line 145
    .local v2, "crashes":I
    invoke-virtual {v10}, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v3

    .line 147
    .local v3, "drones":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mPilotings:Landroid/widget/TextView;

    const v14, 0x7f0f0002

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v14, v8, v15}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mCrashes:Landroid/widget/TextView;

    const/high16 v14, 0x7f0f0000

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v14, v2, v15}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mDrones:Landroid/widget/TextView;

    const v14, 0x7f0f0001

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v14, v3, v15}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    .end local v2    # "crashes":I
    .end local v3    # "drones":I
    .end local v4    # "durationString":Ljava/lang/String;
    .end local v8    # "runs":I
    :cond_1
    if-lez v6, :cond_2

    .line 138
    const v11, 0x7f110081

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "durationString":Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v4    # "durationString":Ljava/lang/String;
    :cond_2
    const v11, 0x7f110082

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v7, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "durationString":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public updateUserInfo(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V
    .locals 7
    .param p1, "profile"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 104
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileAboutView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1105f4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 105
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 106
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiographyContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileAboutView;->mBiography:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/academy/ProfileAboutView;->setTextAndRemoveIfEmpty(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
