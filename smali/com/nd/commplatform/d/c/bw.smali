.class public Lcom/nd/commplatform/d/c/bw;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Z)V

    :cond_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/nd/commplatform/d/c/ez;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ez;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/nd/commplatform/d/c/fm;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fm;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/nd/commplatform/d/c/ex;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ex;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/nd/commplatform/d/c/ds;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ds;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/nd/commplatform/d/c/gg;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gg;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/nd/commplatform/d/c/es;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/es;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/nd/commplatform/d/c/hz;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/hz;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/nd/commplatform/d/c/f;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/nd/commplatform/d/c/g;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/nd/commplatform/d/c/j;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/nd/commplatform/d/c/l;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/nd/commplatform/d/c/k;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/nd/commplatform/d/c/m;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/nd/commplatform/d/c/i;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/nd/commplatform/d/c/h;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lcom/nd/commplatform/d/c/ic;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ic;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_10
    new-instance v0, Lcom/nd/commplatform/d/c/ig;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ig;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_11
    new-instance v0, Lcom/nd/commplatform/d/c/ih;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ih;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_12
    new-instance v0, Lcom/nd/commplatform/d/c/ik;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ik;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_13
    new-instance v0, Lcom/nd/commplatform/d/c/in;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/in;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/nd/commplatform/d/c/io;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/io;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/nd/commplatform/d/c/ip;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ip;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_16
    new-instance v0, Lcom/nd/commplatform/d/c/iq;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iq;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Lcom/nd/commplatform/d/c/ir;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ir;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lcom/nd/commplatform/d/c/fl;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fl;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_19
    new-instance v0, Lcom/nd/commplatform/d/c/fa;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fa;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1a
    new-instance v0, Lcom/nd/commplatform/d/c/id;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/id;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1b
    new-instance v0, Lcom/nd/commplatform/d/c/it;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/it;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1c
    new-instance v0, Lcom/nd/commplatform/d/c/is;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/is;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1d
    new-instance v0, Lcom/nd/commplatform/d/c/il;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/il;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1e
    new-instance v0, Lcom/nd/commplatform/d/c/im;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/im;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_1f
    new-instance v0, Lcom/nd/commplatform/d/c/ix;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ix;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_20
    new-instance v0, Lcom/nd/commplatform/d/c/ja;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ja;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_21
    new-instance v0, Lcom/nd/commplatform/d/c/iy;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iy;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_22
    new-instance v0, Lcom/nd/commplatform/d/c/iz;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iz;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_23
    new-instance v0, Lcom/nd/commplatform/d/c/pg;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/pg;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_24
    new-instance v0, Lcom/nd/commplatform/d/c/ph;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ph;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_25
    new-instance v0, Lcom/nd/commplatform/d/c/fk;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fk;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_26
    new-instance v0, Lcom/nd/commplatform/d/c/fd;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fd;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_27
    new-instance v0, Lcom/nd/commplatform/d/c/fc;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fc;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_28
    new-instance v0, Lcom/nd/commplatform/d/c/dv;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dv;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_29
    new-instance v0, Lcom/nd/commplatform/d/c/dw;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dw;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2a
    new-instance v0, Lcom/nd/commplatform/d/c/dz;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dz;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2b
    new-instance v0, Lcom/nd/commplatform/d/c/dt;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dt;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2c
    new-instance v0, Lcom/nd/commplatform/d/c/du;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/du;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2d
    new-instance v0, Lcom/nd/commplatform/d/c/fe;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fe;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2e
    new-instance v0, Lcom/nd/commplatform/d/c/fh;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fh;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_2f
    new-instance v0, Lcom/nd/commplatform/d/c/fi;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fi;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_30
    new-instance v0, Lcom/nd/commplatform/d/c/gp;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gp;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_31
    new-instance v0, Lcom/nd/commplatform/d/c/eb;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eb;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_32
    new-instance v0, Lcom/nd/commplatform/d/c/ec;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ec;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_33
    new-instance v0, Lcom/nd/commplatform/d/c/ea;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ea;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_34
    new-instance v0, Lcom/nd/commplatform/d/c/do;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/do;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_35
    new-instance v0, Lcom/nd/commplatform/d/c/dr;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dr;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_36
    new-instance v0, Lcom/nd/commplatform/d/c/ee;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ee;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_37
    new-instance v0, Lcom/nd/commplatform/d/c/gh;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gh;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_38
    new-instance v0, Lcom/nd/commplatform/d/c/dq;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dq;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_39
    new-instance v0, Lcom/nd/commplatform/d/c/gi;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gi;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3a
    new-instance v0, Lcom/nd/commplatform/d/c/fb;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fb;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3b
    new-instance v0, Lcom/nd/commplatform/d/c/fo;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fo;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3c
    new-instance v0, Lcom/nd/commplatform/d/c/fg;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fg;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3d
    new-instance v0, Lcom/nd/commplatform/d/c/fn;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fn;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3e
    new-instance v0, Lcom/nd/commplatform/d/c/dp;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dp;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3f
    new-instance v0, Lcom/nd/commplatform/d/c/fp;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_40
    new-instance v0, Lcom/nd/commplatform/d/c/dx;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dx;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_41
    new-instance v0, Lcom/nd/commplatform/d/c/dy;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dy;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_42
    new-instance v0, Lcom/nd/commplatform/d/c/ne;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ne;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_43
    new-instance v0, Lcom/nd/commplatform/d/c/nc;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/nc;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_44
    new-instance v0, Lcom/nd/commplatform/d/c/nd;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/nd;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_45
    new-instance v0, Lcom/nd/commplatform/d/c/gn;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gn;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_46
    new-instance v0, Lcom/nd/commplatform/d/c/gm;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gm;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_47
    new-instance v0, Lcom/nd/commplatform/d/c/o;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/o;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_48
    new-instance v0, Lcom/nd/commplatform/d/c/eq;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eq;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_49
    new-instance v0, Lcom/nd/commplatform/d/c/ia;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ia;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4a
    new-instance v0, Lcom/nd/commplatform/d/c/ew;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ew;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4b
    new-instance v0, Lcom/nd/commplatform/d/c/eu;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4c
    new-instance v0, Lcom/nd/commplatform/d/c/p;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/p;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4d
    new-instance v0, Lcom/nd/commplatform/d/c/q;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/q;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4e
    new-instance v0, Lcom/nd/commplatform/d/c/ib;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ib;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4f
    new-instance v0, Lcom/nd/commplatform/d/c/if;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/if;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_50
    new-instance v0, Lcom/nd/commplatform/d/c/iu;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/iu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_51
    new-instance v0, Lcom/nd/commplatform/d/c/ii;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ii;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_52
    new-instance v0, Lcom/nd/commplatform/d/c/je;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/je;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_53
    new-instance v0, Lcom/nd/commplatform/d/c/jd;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jd;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_54
    new-instance v0, Lcom/nd/commplatform/d/c/jj;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jj;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_55
    new-instance v0, Lcom/nd/commplatform/d/c/jh;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jh;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_56
    new-instance v0, Lcom/nd/commplatform/d/c/ji;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ji;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_57
    new-instance v0, Lcom/nd/commplatform/d/c/jf;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jf;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_58
    new-instance v0, Lcom/nd/commplatform/d/c/jc;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jc;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_59
    new-instance v0, Lcom/nd/commplatform/d/c/jg;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jg;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_5a
    new-instance v0, Lcom/nd/commplatform/d/c/n;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/n;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_18
        0x68 -> :sswitch_19
        0x69 -> :sswitch_25
        0x6a -> :sswitch_26
        0x6b -> :sswitch_27
        0x6c -> :sswitch_2e
        0x6d -> :sswitch_2f
        0x6e -> :sswitch_30
        0x6f -> :sswitch_31
        0x70 -> :sswitch_32
        0x71 -> :sswitch_37
        0x72 -> :sswitch_39
        0x73 -> :sswitch_3a
        0x74 -> :sswitch_3b
        0x75 -> :sswitch_3d
        0x76 -> :sswitch_3f
        0x78 -> :sswitch_40
        0x79 -> :sswitch_41
        0x7a -> :sswitch_42
        0x7b -> :sswitch_43
        0x7c -> :sswitch_44
        0x7d -> :sswitch_45
        0x7e -> :sswitch_46
        0xc9 -> :sswitch_34
        0xca -> :sswitch_35
        0xcb -> :sswitch_38
        0xcc -> :sswitch_3e
        0x12e -> :sswitch_36
        0x259 -> :sswitch_48
        0x25a -> :sswitch_49
        0x25c -> :sswitch_4b
        0x25d -> :sswitch_4a
        0x3eb -> :sswitch_7
        0x3ec -> :sswitch_8
        0x3ed -> :sswitch_9
        0x3ee -> :sswitch_a
        0x3ef -> :sswitch_b
        0x3f0 -> :sswitch_c
        0x3f1 -> :sswitch_47
        0x3f2 -> :sswitch_4c
        0x3f3 -> :sswitch_4d
        0x3f4 -> :sswitch_d
        0x3f6 -> :sswitch_5a
        0x3f7 -> :sswitch_e
        0x44e -> :sswitch_f
        0x452 -> :sswitch_10
        0x453 -> :sswitch_11
        0x454 -> :sswitch_12
        0x455 -> :sswitch_13
        0x456 -> :sswitch_14
        0x457 -> :sswitch_15
        0x458 -> :sswitch_16
        0x459 -> :sswitch_17
        0x45a -> :sswitch_1a
        0x45b -> :sswitch_1b
        0x45c -> :sswitch_1c
        0x45d -> :sswitch_1d
        0x45e -> :sswitch_1e
        0x45f -> :sswitch_4e
        0x460 -> :sswitch_4f
        0x461 -> :sswitch_50
        0x462 -> :sswitch_51
        0x4b2 -> :sswitch_1f
        0x4b3 -> :sswitch_20
        0x4b6 -> :sswitch_21
        0x4b7 -> :sswitch_22
        0x516 -> :sswitch_23
        0x517 -> :sswitch_24
        0xbb9 -> :sswitch_28
        0xbba -> :sswitch_29
        0xbbb -> :sswitch_2a
        0xbbd -> :sswitch_2b
        0xbbe -> :sswitch_2c
        0xbc0 -> :sswitch_2d
        0xbc1 -> :sswitch_33
        0xbc2 -> :sswitch_3c
        0xfa0 -> :sswitch_52
        0xfa1 -> :sswitch_59
        0xfa2 -> :sswitch_53
        0xfa3 -> :sswitch_54
        0xfa5 -> :sswitch_55
        0xfa6 -> :sswitch_56
        0xfa7 -> :sswitch_58
        0xfa8 -> :sswitch_57
    .end sparse-switch
.end method

.method static synthetic a(I)Z
    .locals 1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/bw;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Z)V

    :cond_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/nd/commplatform/d/c/es;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/es;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/nd/commplatform/d/c/f;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/nd/commplatform/d/c/g;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/nd/commplatform/d/c/j;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/nd/commplatform/d/c/l;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/nd/commplatform/d/c/k;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/nd/commplatform/d/c/i;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/nd/commplatform/d/c/h;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/nd/commplatform/d/c/eq;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eq;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/nd/commplatform/d/c/p;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/p;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/n;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x3 -> :sswitch_a
        0x4 -> :sswitch_0
        0x5 -> :sswitch_a
        0x259 -> :sswitch_8
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_5
        0x3f2 -> :sswitch_9
        0x3f4 -> :sswitch_6
        0x3f7 -> :sswitch_7
    .end sparse-switch
.end method

.method private static final b(I)Z
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x259 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x3ef -> :sswitch_0
        0x3f2 -> :sswitch_0
        0x3f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/nd/commplatform/d/c/bw$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/bw$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper;->a(Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper$IContentCreator;)V

    new-instance v1, Lcom/nd/commplatform/d/c/bw$2;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/bw$2;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper;->b(Lcom/nd/commplatform/widget/NdFrameInnerContentWrapper$IContentCreator;)V

    return-object v0
.end method
