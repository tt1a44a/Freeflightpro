.class Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UpdateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdateListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProductViewHolder"
.end annotation


# instance fields
.field private final mActionButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mActionDescriptionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductImageNormalTint:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mProductImageUpdateMandatoryTint:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mProductImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVersionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    .line 84
    const v0, 0x7f0a0225

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0a04a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0a04a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mVersionTextView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0a038a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f0a04a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    .line 91
    const v0, 0x7f050146

    iput v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageNormalTint:I

    .line 92
    const v0, 0x7f050055

    iput v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageUpdateMandatoryTint:I

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mVersionTextView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/parrot/freeflight/update/UpdateListAdapter$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public updateView(Lcom/parrot/freeflight/user/UserProduct;Z)V
    .locals 15
    .param p1, "userProduct"    # Lcom/parrot/freeflight/user/UserProduct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isEvenRow"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 102
    .local v12, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_0

    const v1, 0x7f05013d

    :goto_0
    const/4 v5, 0x0

    invoke-static {v12, v1, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 104
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const/4 v10, 0x0

    .line 105
    .local v10, "productIsDrone":Z
    sget-object v1, Lcom/parrot/freeflight/update/UpdateListAdapter$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->isUpdateMandatory()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v13, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageUpdateMandatoryTint:I

    .line 136
    .local v13, "tintColor":I
    :goto_2
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v5, v13}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "softwareVersion":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getUpdateVersion()Ljava/lang/String;

    move-result-object v14

    .line 141
    .local v14, "updateVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mVersionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, "progress":Z
    const/4 v9, 0x0

    .line 146
    .local v9, "descriptionText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 147
    .local v8, "actionText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 149
    .local v0, "actionOnClick":Landroid/view/View$OnClickListener;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getUpdateState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 182
    :goto_3
    if-eqz v11, :cond_3

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    :goto_4
    return-void

    .line 102
    .end local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    .end local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v4    # "softwareVersion":Ljava/lang/String;
    .end local v8    # "actionText":Ljava/lang/String;
    .end local v9    # "descriptionText":Ljava/lang/String;
    .end local v10    # "productIsDrone":Z
    .end local v11    # "progress":Z
    .end local v13    # "tintColor":I
    .end local v14    # "updateVersion":Ljava/lang/String;
    :cond_0
    const v1, 0x7f05013e

    goto :goto_0

    .line 107
    .restart local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .restart local v10    # "productIsDrone":Z
    :pswitch_0
    const/4 v10, 0x1

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0704fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 112
    :pswitch_1
    const/4 v10, 0x1

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0704fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 116
    :pswitch_2
    const/4 v10, 0x1

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0704ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 120
    :pswitch_3
    const/4 v10, 0x1

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0704fe

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 125
    :pswitch_4
    const/4 v10, 0x0

    .line 126
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0704fc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 131
    :pswitch_5
    const/4 v10, 0x0

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageView:Landroid/widget/ImageView;

    const v2, 0x7f0703fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 135
    :cond_1
    iget v13, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mProductImageNormalTint:I

    goto/16 :goto_2

    .line 151
    .restart local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    .restart local v4    # "softwareVersion":Ljava/lang/String;
    .restart local v8    # "actionText":Ljava/lang/String;
    .restart local v9    # "descriptionText":Ljava/lang/String;
    .restart local v11    # "progress":Z
    .restart local v13    # "tintColor":I
    .restart local v14    # "updateVersion":Ljava/lang/String;
    :pswitch_6
    const v1, 0x7f110773

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 152
    goto :goto_3

    .line 154
    :pswitch_7
    const v1, 0x7f110760

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    goto :goto_3

    .line 157
    :pswitch_8
    const v1, 0x7f11076d

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    goto :goto_3

    .line 160
    :pswitch_9
    const v1, 0x7f110766

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    goto :goto_3

    .line 163
    :pswitch_a
    if-eqz v10, :cond_2

    const v1, 0x7f110765

    :goto_5
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 164
    goto/16 :goto_3

    .line 163
    :cond_2
    const v1, 0x7f110764

    goto :goto_5

    .line 166
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110360

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    new-instance v0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;

    .end local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->needTrampolineUpdate()Z

    move-result v5

    invoke-static {v2, v3, v4, v14, v5}, Lcom/parrot/freeflight/update/UpdaterEventArgsFactory;->createUploadArgs(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V

    .line 168
    .restart local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    goto/16 :goto_3

    .line 170
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101b8

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    new-instance v0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;

    .end local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v14}, Lcom/parrot/freeflight/update/UpdaterEventArgsFactory;->createDownloadArgs(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V

    .line 172
    .restart local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    goto/16 :goto_3

    .line 174
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101b8

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 175
    new-instance v0, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;

    .end local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->getAdditionalUpdateVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/user/UserProduct;->needTrampolineUpdate()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLcom/parrot/freeflight/update/UpdateListAdapter$1;)V

    .line 176
    .restart local v0    # "actionOnClick":Landroid/view/View$OnClickListener;
    goto/16 :goto_3

    .line 178
    :pswitch_e
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 186
    :cond_3
    if-eqz v9, :cond_4

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 191
    :cond_4
    if-eqz v8, :cond_5

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 198
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mServerUpdateCheckProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionDescriptionTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->mActionButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
