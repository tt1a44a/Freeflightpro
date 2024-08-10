.class public Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mCategoryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsGamePadSelected:Z

.field private mNormalColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mSelectedColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mSelection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    .local p2, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    .line 40
    const v0, 0x7f0500a3

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelectedColor:I

    .line 41
    const v0, 0x7f050146

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mNormalColor:I

    .line 42
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v4, 0x0

    .line 76
    move-object v2, p2

    .line 77
    .local v2, "vi":Landroid/view/View;
    const/4 v0, 0x0

    .line 79
    .local v0, "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    if-nez v2, :cond_1

    .line 81
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 83
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0c00ee

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 84
    new-instance v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;-><init>()V

    .line 86
    .restart local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    const v3, 0x7f0a0256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0a01be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 88
    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 89
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v3, p1, :cond_2

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelectedColor:I

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v5, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v3, p1, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v5, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getIconResId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v5, p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 103
    return-object v2

    .line 93
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    check-cast v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    goto :goto_0

    .line 97
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mNormalColor:I

    goto :goto_1

    .line 99
    :cond_3
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    .line 129
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetInvalidated()V

    .line 130
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public updateGamePadSelection(Z)V
    .locals 0
    .param p1, "isGamePadSelected"    # Z

    .prologue
    .line 123
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mIsGamePadSelected:Z

    .line 124
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 125
    return-void
.end method
