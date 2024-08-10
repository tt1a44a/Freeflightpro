.class Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;
.super Ljava/lang/Object;
.source "ActionNumericParameter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;

.field final synthetic val$this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;->this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;->val$this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView$1;->this$1:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;->updateValue()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
