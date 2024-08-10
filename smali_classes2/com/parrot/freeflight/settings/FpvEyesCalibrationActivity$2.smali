.class Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$2;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$2;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity$2;->this$0:Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->finish()V

    .line 70
    return-void
.end method
