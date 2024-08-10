.class Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;
.super Ljava/lang/Object;
.source "ActionMultipleChoiceParameter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;

.field final synthetic val$this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;->this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;->val$this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView$1;->this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;->access$002(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionMultipleChoiceParameter;I)I

    .line 53
    return-void
.end method
