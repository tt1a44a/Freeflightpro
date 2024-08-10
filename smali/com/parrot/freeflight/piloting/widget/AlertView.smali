.class public Lcom/parrot/freeflight/piloting/widget/AlertView;
.super Landroid/widget/LinearLayout;
.source "AlertView.java"


# instance fields
.field private final mAlertShowing:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDefaultWidth:I

.field private mItemLayout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mItemTextId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mMinWidth:I

.field private final mOrangeBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRedBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    .line 39
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mMinWidth:I

    .line 41
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mDefaultWidth:I

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setOrientation(I)V

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    .line 55
    const v0, 0x7f070384

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mRedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const v0, 0x7f07038d

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mOrangeBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    return-void
.end method

.method private getItemText(IILandroid/view/LayoutInflater;I)Landroid/widget/TextView;
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "position"    # I
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "criticalityLevel"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 133
    if-lt p2, p1, :cond_0

    .line 134
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemLayout:I

    invoke-virtual {p3, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    :cond_0
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "messageView":Landroid/view/View;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mRedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemTextId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 140
    return-object v1

    .line 137
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mOrangeBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private measureMinWidth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "itemView":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 71
    .local v2, "size":I
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mMinWidth:I

    .line 73
    return-void
.end method


# virtual methods
.method public refresh(Ljava/util/List;)Z
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    const/4 v9, 0x0

    .line 77
    .local v9, "needRefresh":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    .local v2, "alertsLength":I
    if-lez v2, :cond_8

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eq v2, v14, :cond_1

    const/4 v9, 0x1

    .line 80
    :goto_0
    if-nez v9, :cond_2

    .line 81
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    if-nez v9, :cond_2

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-virtual {v15}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 83
    const/4 v9, 0x1

    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v4    # "i":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 88
    :cond_2
    if-eqz v9, :cond_8

    .line 89
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mMinWidth:I

    if-gez v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->measureMinWidth()V

    .line 90
    :cond_3
    const/4 v7, 0x0

    .line 91
    .local v7, "longestTextView":Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 92
    .local v6, "longestTextLength":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getChildCount()I

    move-result v3

    .line 94
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 96
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 97
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 98
    .local v1, "alert":Lcom/parrot/freeflight/piloting/alert/Alert;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getMessage()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "text":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/Alert;->getCriticalityLevel()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v14}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getItemText(IILandroid/view/LayoutInflater;I)Landroid/widget/TextView;

    move-result-object v13

    .line 100
    .local v13, "tv":Landroid/widget/TextView;
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 102
    move-object v7, v13

    .line 103
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 105
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 107
    .end local v1    # "alert":Lcom/parrot/freeflight/piloting/alert/Alert;
    .end local v11    # "text":Ljava/lang/String;
    .end local v13    # "tv":Landroid/widget/TextView;
    :cond_5
    if-le v3, v2, :cond_6

    .line 108
    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/widget/AlertView;->removeViewAt(I)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 112
    :cond_6
    if-eqz v7, :cond_8

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 114
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mDefaultWidth:I

    if-gez v14, :cond_7

    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mDefaultWidth:I

    .line 115
    :cond_7
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 116
    .restart local v11    # "text":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v12, v14

    .line 117
    .local v12, "textLength":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mDefaultWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mMinWidth:I

    add-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "longestTextLength":I
    .end local v7    # "longestTextView":Landroid/widget/TextView;
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "textLength":I
    :cond_8
    if-nez v2, :cond_a

    const/4 v10, 0x4

    .line 124
    .local v10, "newVisibility":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_9

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setVisibility(I)V

    .line 127
    :cond_9
    return v9

    .line 123
    .end local v10    # "newVisibility":I
    :cond_a
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public setItemLayout(I)V
    .locals 0
    .param p1, "itemLayout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 60
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemLayout:I

    .line 61
    return-void
.end method

.method public setItemTextId(I)V
    .locals 0
    .param p1, "itemTextId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 64
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemTextId:I

    .line 65
    return-void
.end method
