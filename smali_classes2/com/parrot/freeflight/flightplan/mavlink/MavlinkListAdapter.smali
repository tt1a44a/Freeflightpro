.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MavlinkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x400000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSavedPlanItemComparator:Ljava/util/Comparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:I

.field private mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resource"    # I
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "savedPlanItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedPosition:I

    .line 37
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$1;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mBitmapCache:Landroid/util/LruCache;

    .line 45
    new-instance v0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$2;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSavedPlanItemComparator:Ljava/util/Comparator;

    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSavedPlanItemComparator:Ljava/util/Comparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    const v0, 0x7f0500cc

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedColor:I

    .line 58
    return-void
.end method


# virtual methods
.method public add(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .locals 1
    .param p1, "object"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSavedPlanItemComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->sort(Ljava/util/Comparator;)V

    .line 64
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    check-cast p1, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->add(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    return-void
.end method

.method public forceUpdateBitmap()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 68
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    if-nez p2, :cond_2

    .line 110
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0c00b1

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    const v11, 0x7f0a04c8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 112
    .local v8, "titleTextView":Landroid/widget/TextView;
    const v11, 0x7f0a044d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, "dateTextView":Landroid/widget/TextView;
    const v11, 0x7f0a04a4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 114
    .local v6, "productTextView":Landroid/widget/TextView;
    const v11, 0x7f0a01fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;

    .line 115
    .local v4, "mapImageView":Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v4, v11}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->setHeightWidthRatio(F)V

    .line 117
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 118
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    new-instance v11, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;

    invoke-direct {v11, v4, v8, v3, v6}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;-><init>(Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 132
    .local v7, "savedPlanItem":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    const/4 v2, 0x0

    .line 133
    .local v2, "cachedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "uuid":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 136
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v11, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 139
    .restart local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 142
    if-eqz v9, :cond_1

    .line 143
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    .local v5, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    invoke-static {v9}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanScreenshotFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_1

    .line 148
    iget-object v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v11, v9, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v11}, Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getDateFormatted()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedPosition:I

    if-ne p1, v11, :cond_4

    .line 162
    iget v11, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    :goto_2
    return-object p2

    .line 123
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "dateTextView":Landroid/widget/TextView;
    .end local v4    # "mapImageView":Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
    .end local v6    # "productTextView":Landroid/widget/TextView;
    .end local v7    # "savedPlanItem":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .end local v8    # "titleTextView":Landroid/widget/TextView;
    .end local v9    # "uuid":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;

    .line 124
    .local v10, "viewHolder":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;
    iget-object v4, v10, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->mapImageView:Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;

    .line 125
    .restart local v4    # "mapImageView":Lcom/parrot/freeflight/flightplan/mavlink/ui/SquareImageView;
    iget-object v8, v10, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 126
    .restart local v8    # "titleTextView":Landroid/widget/TextView;
    iget-object v3, v10, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    .line 127
    .restart local v3    # "dateTextView":Landroid/widget/TextView;
    iget-object v6, v10, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;->productTextView:Landroid/widget/TextView;

    .restart local v6    # "productTextView":Landroid/widget/TextView;
    goto :goto_0

    .line 152
    .end local v10    # "viewHolder":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter$ViewHolder;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "savedPlanItem":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .restart local v9    # "uuid":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    goto :goto_1

    .line 164
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->mSelectedPosition:I

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method
