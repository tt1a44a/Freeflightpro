.class Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;
.super Ljava/lang/Object;
.source "FlightPlanFreeTrialActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field final synthetic val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrollStateChanged(I)V

    .line 157
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 145
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageSelected(I)V

    .line 151
    return-void
.end method
