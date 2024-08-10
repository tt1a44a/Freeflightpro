.class Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;
.super Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
.source "ActionMultipleChoiceParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterView"
.end annotation


# instance fields
.field private final mRadioButtonWidth:I

.field private final mRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;Landroid/content/Context;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioButtonWidth:I

    .line 43
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 44
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 45
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->getDefaultValueLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, "layoutParams":Landroid/widget/TableRow$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->refresh()V

    .line 56
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method public applyTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 4
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/view/View;)V

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 61
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 63
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioButtonWidth:I

    const/4 v8, -0x1

    invoke-direct {v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v3, "radioBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)[Ljava/lang/String;

    move-result-object v6

    array-length v2, v6

    .line 67
    .local v2, "len":I
    const/4 v1, 0x0

    .line 68
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v5, v8, v6

    .line 70
    .local v5, "s":Ljava/lang/String;
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 71
    .local v4, "radioButton":Landroid/widget/RadioButton;
    invoke-static {v0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget v10, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v4, v7, v10}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 74
    const v10, 0x106000d

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 75
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 76
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    if-nez v1, :cond_0

    .line 78
    const v10, 0x7f070470

    invoke-static {v0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 85
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-virtual {v10}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v10, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_1

    .line 80
    const v10, 0x7f070476

    invoke-static {v0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 82
    :cond_1
    const v10, 0x7f07046a

    invoke-static {v0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 89
    .end local v4    # "radioButton":Landroid/widget/RadioButton;
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 90
    return-void
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$002(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;I)I

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->setValue(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
