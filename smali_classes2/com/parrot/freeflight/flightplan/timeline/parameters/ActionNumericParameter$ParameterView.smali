.class Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;
.super Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
.source "ActionNumericParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterView"
.end annotation


# instance fields
.field private final mValueText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    invoke-static {p2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 82
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 84
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    new-instance v2, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->refresh()V

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->addView(Landroid/view/View;)V

    .line 97
    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "unitLabel":Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->addView(Landroid/view/View;)V

    .line 103
    .end local v0    # "unitLabel":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 0
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public updateValue()V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    .local v0, "curValue":F
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->access$200(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v2

    .line 114
    .local v2, "limitValue":F
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->mValueText:Landroid/widget/EditText;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 118
    return-void

    .line 110
    .end local v0    # "curValue":F
    .end local v2    # "limitValue":F
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0    # "curValue":F
    goto :goto_0
.end method
