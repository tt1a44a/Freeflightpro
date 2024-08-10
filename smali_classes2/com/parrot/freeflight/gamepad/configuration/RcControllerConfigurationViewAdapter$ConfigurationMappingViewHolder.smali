.class public Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RcControllerConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigurationMappingViewHolder"
.end annotation


# instance fields
.field private final mActionNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mChannelTypeChoiceView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mChannelTypeImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mChannelTypesView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEditView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInvertView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMinMaxView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOneWayGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreviousChannelInfoForTypeChoice:Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

.field private final mRequiredTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwoWaysGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    .line 166
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    const v1, 0x7f0a042d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mActionNameTextView:Landroid/widget/TextView;

    .line 168
    const v1, 0x7f0a04b2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mRequiredTextView:Landroid/widget/TextView;

    .line 169
    const v1, 0x7f0a0357

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mOneWayGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;

    .line 170
    const v1, 0x7f0a0514

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mTwoWaysGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;

    .line 171
    const v1, 0x7f0a01d6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeImageView:Landroid/widget/ImageView;

    .line 172
    const v1, 0x7f0a0298

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInvertView:Landroid/view/View;

    .line 173
    const v1, 0x7f0a027a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mEditView:Landroid/view/View;

    .line 174
    const v1, 0x7f0a026c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeChoiceView:Landroid/view/View;

    .line 175
    const v1, 0x7f0a026d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypesView:Landroid/view/ViewGroup;

    .line 176
    const v1, 0x7f0a048f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mMinMaxView:Landroid/view/View;

    .line 178
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInvertView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mEditView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mActionNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mRequiredTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 223
    const v1, 0x7f0a0480

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    const v1, 0x7f0a0459

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeChoiceView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mMinMaxView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    return-void
.end method

.method private getChannelTypeIcon(I)I
    .locals 1
    .param p1, "channelType"    # I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 349
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 335
    :pswitch_0
    const v0, 0x7f0703ef

    goto :goto_0

    .line 337
    :pswitch_1
    const v0, 0x7f0703ee

    goto :goto_0

    .line 339
    :pswitch_2
    const v0, 0x7f0703f4

    goto :goto_0

    .line 341
    :pswitch_3
    const v0, 0x7f0703fa

    goto :goto_0

    .line 343
    :pswitch_4
    const v0, 0x7f0703fb

    goto :goto_0

    .line 345
    :pswitch_5
    const v0, 0x7f0703f8

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getChannelTypeText(I)I
    .locals 1
    .param p1, "channelType"    # I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_0

    .line 371
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 357
    :pswitch_0
    const v0, 0x7f110306

    goto :goto_0

    .line 359
    :pswitch_1
    const v0, 0x7f110307

    goto :goto_0

    .line 361
    :pswitch_2
    const v0, 0x7f110304

    goto :goto_0

    .line 363
    :pswitch_3
    const v0, 0x7f110309

    goto :goto_0

    .line 365
    :pswitch_4
    const v0, 0x7f11030a

    goto :goto_0

    .line 367
    :pswitch_5
    const v0, 0x7f110308

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isChannelTypeOneWay(I)Z
    .locals 1
    .param p1, "channelType"    # I

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 327
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 321
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public updateView(I)V
    .locals 24
    .param p1, "position"    # I

    .prologue
    .line 230
    rem-int/lit8 v19, p1, 0x2

    if-nez v19, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f070353

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 237
    .local v6, "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getAction()I

    move-result v5

    .line 238
    .local v5, "channelAction":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mActionNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$600()Landroid/util/SparseIntArray;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const/16 v4, 0x8

    .line 241
    .local v4, "actionNameVisibility":I
    const/16 v15, 0x8

    .line 242
    .local v15, "oneWayGaugeVisibility":I
    const/16 v17, 0x8

    .line 243
    .local v17, "twoWaysGaugeVisibility":I
    const/16 v10, 0x8

    .line 244
    .local v10, "channelTypeVisibility":I
    const/16 v16, 0x8

    .line 245
    .local v16, "requiredVisibility":I
    const/16 v13, 0x8

    .line 246
    .local v13, "invertEditVisibility":I
    const/16 v9, 0x8

    .line 247
    .local v9, "channelTypeChoiceVisibility":I
    const/16 v14, 0x8

    .line 249
    .local v14, "minMaxVisibility":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$400(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 304
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mActionNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mOneWayGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->setVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mTwoWaysGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mRequiredTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInvertView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mEditView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeChoiceView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mMinMaxView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 313
    return-void

    .line 233
    .end local v4    # "actionNameVisibility":I
    .end local v5    # "channelAction":I
    .end local v6    # "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    .end local v9    # "channelTypeChoiceVisibility":I
    .end local v10    # "channelTypeVisibility":I
    .end local v13    # "invertEditVisibility":I
    .end local v14    # "minMaxVisibility":I
    .end local v15    # "oneWayGaugeVisibility":I
    .end local v16    # "requiredVisibility":I
    .end local v17    # "twoWaysGaugeVisibility":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f070352

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 252
    .restart local v4    # "actionNameVisibility":I
    .restart local v5    # "channelAction":I
    .restart local v6    # "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    .restart local v9    # "channelTypeChoiceVisibility":I
    .restart local v10    # "channelTypeVisibility":I
    .restart local v13    # "invertEditVisibility":I
    .restart local v14    # "minMaxVisibility":I
    .restart local v15    # "oneWayGaugeVisibility":I
    .restart local v16    # "requiredVisibility":I
    .restart local v17    # "twoWaysGaugeVisibility":I
    :pswitch_0
    const/4 v4, 0x0

    .line 253
    const/4 v13, 0x0

    .line 254
    goto :goto_1

    .line 256
    :pswitch_1
    const/4 v9, 0x0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mPreviousChannelInfoForTypeChoice:Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v6, :cond_0

    .line 259
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mPreviousChannelInfoForTypeChoice:Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypesView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$700(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 262
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 263
    .local v11, "index":I
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getSupportedChannelTypes()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 264
    .local v8, "channelType":Ljava/lang/Integer;
    const v20, 0x7f0c00b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypesView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypesView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 266
    .local v7, "channelTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$700(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getChannelTypeText(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 269
    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getChannelTypeIcon(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 270
    new-instance v20, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    add-int/lit8 v11, v11, 0x1

    .line 278
    goto :goto_2

    .line 282
    .end local v7    # "channelTextView":Landroid/widget/TextView;
    .end local v8    # "channelType":Ljava/lang/Integer;
    .end local v11    # "index":I
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_2
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 286
    :cond_2
    const/4 v4, 0x0

    .line 287
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->isCalibrated()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 288
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getCalibratedChannelType()I

    move-result v8

    .line 289
    .local v8, "channelType":I
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getValue()I

    move-result v18

    .line 290
    .local v18, "value":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->isChannelTypeOneWay(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 291
    const/4 v15, 0x0

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mOneWayGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/widget/OneWayGaugeView;->setValue(I)V

    .line 297
    :goto_3
    const/4 v10, 0x0

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mChannelTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getChannelTypeIcon(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 294
    :cond_3
    const/16 v17, 0x0

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->mTwoWaysGaugeView:Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/widget/TwoWaysGaugeView;->setValue(I)V

    goto :goto_3

    .line 299
    .end local v8    # "channelType":I
    .end local v18    # "value":I
    :cond_4
    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->isRequired()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 300
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
