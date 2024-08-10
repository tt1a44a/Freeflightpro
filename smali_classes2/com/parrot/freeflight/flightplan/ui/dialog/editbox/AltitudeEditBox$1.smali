.class Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;
.super Ljava/lang/Object;
.source "AltitudeEditBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->init(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    iget-object v2, v2, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    .local v0, "altitude":F
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->access$200(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;->onPointAltitudeChanged(IIF)V

    .line 54
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->dismiss()V

    .line 55
    return-void

    .line 50
    .end local v0    # "altitude":F
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/high16 v0, -0x40800000    # -1.0f

    .restart local v0    # "altitude":F
    goto :goto_0
.end method
