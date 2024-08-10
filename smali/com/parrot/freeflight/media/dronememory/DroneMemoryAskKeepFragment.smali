.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
.super Landroid/support/v4/app/Fragment;
.source "DroneMemoryAskKeepFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;


# static fields
.field private static final ARG_END_ACTION:Ljava/lang/String; = "endAction"

.field private static final ARG_FILE_ITEM_ARRAY:Ljava/lang/String; = "fileItems"


# instance fields
.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private mStatusImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mStatusImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050055

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 120
    .local v0, "redColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    .locals 3
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileItems"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endAction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;-><init>()V

    .line 41
    .local v1, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "endAction"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v2, "fileItems"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
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
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, "context":Landroid/content/Context;
    const v7, 0x7f0c00c5

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    .line 54
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a021f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mStatusImageView:Landroid/widget/ImageView;

    .line 55
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a04be

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 56
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0450

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "descriptionStatusTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0082

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    .line 58
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0065

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "endAction"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    .local v3, "endAction":I
    const-string v7, "fileItems"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, [Lcom/parrot/freeflight/media/model/FileItem;

    move-object v4, v7

    check-cast v4, [Lcom/parrot/freeflight/media/model/FileItem;

    .line 63
    .local v4, "fileItems":[Lcom/parrot/freeflight/media/model/FileItem;
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 65
    .local v6, "resources":Landroid/content/res/Resources;
    array-length v5, v4

    .line 66
    .local v5, "itemCount":I
    const v7, 0x7f0f0008

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v5, v8}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    const v8, 0x7f0f0005

    invoke-virtual {v6, v8, v5}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    const v8, 0x7f0f0004

    invoke-virtual {v6, v8, v5}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;

    invoke-direct {v8, p0, v3, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;I[Lcom/parrot/freeflight/media/model/FileItem;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;

    invoke-direct {v8, p0, v4, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;[Lcom/parrot/freeflight/media/model/FileItem;I)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v7, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 87
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;)V

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 94
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f0a04cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-static {v1, v7, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 98
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-static {v1, v7, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 99
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mRootView:Landroid/view/View;

    return-object v7
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 112
    return-void
.end method
