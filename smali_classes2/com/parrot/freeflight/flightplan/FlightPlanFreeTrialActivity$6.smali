.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;
.super Ljava/lang/Object;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->setResult(I)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;->finish()V

    .line 187
    return-void
.end method
