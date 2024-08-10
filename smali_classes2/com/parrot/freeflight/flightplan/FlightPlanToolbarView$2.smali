.class Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;
.super Ljava/lang/Object;
.source "FlightPlanToolbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView$2;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;->access$100(Lcom/parrot/freeflight/flightplan/FlightPlanToolbarView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method
