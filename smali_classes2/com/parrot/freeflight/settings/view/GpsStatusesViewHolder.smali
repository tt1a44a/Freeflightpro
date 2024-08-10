.class public Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "GpsStatusesViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DroneModel;",
        "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mControllerGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private final mDroneGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private final mReturnHomeImageView:Landroid/widget/ImageView;

.field private final mSettingsNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 12
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const v11, 0x7f0704f0

    const v10, 0x7f0500a3

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    const v6, 0x7f0a04da

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 32
    const v6, 0x7f0a0454

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 33
    .local v4, "droneTextView":Landroid/widget/TextView;
    const v6, 0x7f0a0447

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    .local v2, "controllerTextView":Landroid/widget/TextView;
    const v6, 0x7f0a047a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 35
    .local v5, "homePositionTextView":Landroid/widget/TextView;
    const v6, 0x7f0a01ee

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 36
    .local v3, "droneGpsImageView":Landroid/widget/ImageView;
    const v6, 0x7f0a01ed

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, "controllerGpsImageView":Landroid/widget/ImageView;
    const v6, 0x7f0a01f1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mReturnHomeImageView:Landroid/widget/ImageView;

    .line 39
    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    invoke-static {v0, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v7, v9, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mDroneGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 40
    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    invoke-static {v0, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v7, v9, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mControllerGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 42
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mDroneGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mControllerGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 47
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    invoke-static {v0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 49
    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    invoke-static {v0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    return-void
.end method

.method private static getDrawableLevelFromSignalLevel(I)I
    .locals 1
    .param p0, "signalLevel"    # I

    .prologue
    .line 68
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 70
    :cond_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    .line 71
    const/16 v0, 0x9c4

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x3

    if-ge p0, v0, :cond_2

    .line 73
    const/16 v0, 0x1388

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x4

    if-ge p0, v0, :cond_3

    .line 75
    const/16 v0, 0x1d4c

    goto :goto_0

    .line 77
    :cond_3
    const/16 v0, 0x2710

    goto :goto_0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;)V
    .locals 3
    .param p1    # Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "value":Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;, "Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry<Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->isReturnHomeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mReturnHomeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500a3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mReturnHomeImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mControllerGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->getControllerGpsLevel()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->getDrawableLevelFromSignalLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mDroneGpsClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;->getDroneGpsLevel()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->getDrawableLevelFromSignalLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 65
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mReturnHomeImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->mReturnHomeImageView:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;->update(Lcom/parrot/freeflight/settings/model/GpsStatusesSettingsEntry;)V

    return-void
.end method
