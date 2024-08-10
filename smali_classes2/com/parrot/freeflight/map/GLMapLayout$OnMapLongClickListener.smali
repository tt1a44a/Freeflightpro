.class public interface abstract Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;
.super Ljava/lang/Object;
.source "GLMapLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLMapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapLongClickListener"
.end annotation


# virtual methods
.method public abstract onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
