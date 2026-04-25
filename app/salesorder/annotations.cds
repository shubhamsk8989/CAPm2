using CatalogService as service from '../../srv/CatalogService';
annotate service.SO with @(
    UI.SelectionFields : [
        customerNumber,
        PoNumber,
        inquiryNumber
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'soNumber',
            Value : soNumber,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'orderDate',
        //     Value : orderDate,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'customerName',
        //     Value : customerName,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'customerNumber',
        //     Value : customerNumber,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'PoNumber',
        //     Value : PoNumber,
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Label : 'inquiryNumber',
        //     Value : inquiryNumber
        // },
        {
            $Type : 'UI.DataField',
            Label : 'totalOrderItems',
            Value : totalOrderItems,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Boost',
            Action: 'CatalogService.boost',
            Inline: true
        },
        {
            $Type : 'UI.DataField',
            Label : 'Satus',
            Value :  status,
            Criticality : Criticality,
            CriticalityRepresentation : #WithIcon
        },
    ],

    UI.HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Sales Order',
        TypeNamePlural: 'Sales Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: soNumber
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: customerNumber
        },
        ImageUrl      : 'data:image/jpeg;base64,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'
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Table Information',
            Target : 'Items/@UI.LineItem#GeneratedTable'
        },
    ],

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'soNumber',
                Value : soNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orderDate',
                Value : orderDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerName',
                Value : customerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerNumber',
                Value : customerNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PoNumber',
                Value : PoNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'inquiryNumber',
                Value : inquiryNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'totalOrderItems',
                Value : totalOrderItems,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Note',
                Value : Note,
            }
        ],
    }
    
);

annotate service.SOItems with @(
    UI.LineItem #GeneratedTable:[
        {
            $Type : 'UI.DataField',
            Value : itemId
        },
        {
            $Type : 'UI.DataField',
            Value : productId
        },
        {
            $Type : 'UI.DataField',
            Value : quantity
        },
        {
            $Type : 'UI.DataField',
            Value : price
        },
    ],

    UI.HeaderInfo:{
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Sales Order Item',
        TypeNamePlural: 'Sales Order Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: itemId
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: productId
        },
        ImageUrl      : 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhMVFRUXFxUXFRcXGRcXGBgWFxUXFxUXFRcYHSggGBolGxcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFRAQFy0eHR0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstLS0tLSstKy0tLS0tLS0tKystLS0tLSstK//AABEIAMIBAwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBAUGBwj/xABFEAABAwIDBAcGAwYEBAcAAAABAAIRAyEEEjEFQVFhBiIycYGRoRNCscHR8AdS4RQjYnKS8RUzgsJDU6KyFjRjc5PS0//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACQRAQEAAgEEAgEFAAAAAAAAAAABAhExAxIhUQRBEyJCYXGR/9oADAMBAAIRAxEAPwDx4IkITrTIk8oU6BymBToVATVKoWm6mBQO1OkEMoHCdCE8oDCcIQU4QJ5R0wo3FSByCQKRQhSSglQgp5QKAwUNP6/FNKVI2UqxIFHmkp6jrKNxgQoBqvkpghCJRRJwhCJqlUYUjHRcKMIwoqQ3uPEfMclESnD4705vprvHzH0UAJJpSVGOESEJ5XdzOiQhEEDpikmJQOFIFECjBUEsoCU4chlAQKRQpwoJE6EFPKoRThASiaUEwRyo2uTvKCYOshBUMpw5RUoKenoO5R5kwqWG4KUHMnkFE90lCX7hokFFEE6GUpUBhGFGEYUqpmEaHz4fUJPEKOU+dRTlNKUjuTQgP2g3tk95Hoko5SQZISTJLs5jBTygBTyqDlMU0pSgcIgUEpSoJJTSmlMoo5RAqMIgUByiQJ5QEiAR4KlneG3i5MawBJjwlbGM2XSDC6mauYRZ5Y4Eb7hrYPgfmqm2Q1w4pFy2KO3cQ3qioCNzXjMP6XAg+AUn7bh32r4Wmf46BNF44ksAy+dMd6hthShzLcPR6nW/8niWvJ0pVopVe5rh1Kh5Ag8lnjo7jTUNIYd+catMA95zEQE1TcUXPQ5l12B/DXGvvUdSpDm4ud5NEf8AUtvC/hZTH+bjCf5GMZ6uc74K9mXpO/H284CJev4P8M9nCz6tV3fUYP8AtaFo1Pwk2dUbFOvUpu3Q9rvRwKlwsWZyvD5ThdX0w6AYvAS9zfa0N1amCQB/6jbmn3m3NcoCsaaG0IjZRgp00uxAp5Qgp5U0HlNmQlCmhLnKSjlMqM6UpQkpwujAgnlDKUoClIIJTgoCKcIJSBRRylKGU0oJJRAoGtJ0BVqls+od0d9vjZBBmSlXv8PDRme63eL+Gq2cLh8OcstFyWjLGsEtM7xb1UvhcZu6c3h3vDg5kggyCNx+9y3qOMrPaQaIB/MLD+m4nuIHJTudVERRp0Odd7GuHP2biH+TSqWIrgjr4vMb9Wix2XlLn+zjwa5N6Ttt+gnDuaSamQgz1XRvG6NDzBBVKi9wOgeBq10kfER4IjXHHkBw+p5oHMcdNBpHrpv71NtXHU8r5p0niKTWscbmH5jMdkB0AjwWng+k9ehFPEtFekOyHk5m6/5dQHPSPcS3kVg+yz0nFxl7AHNO9zZAc13MA5pP5SN6WFx89SpJBtJ1HC61GLHotDF/tDc2Eque6CTSeWjENA1NMkFlcDukWkBUG7ZxbT+7NKrHaZVaaNXuDgch8h3Lkn4R9Ih9Jx1kZSQZF5aRcEcrhdjsXatPHRSxBDMRpTrgRnO5lUCAXHcfenc6Cd8sccLGC6X4Q9TFUa1GoO1oWjd2gwvHi0DmukwFXC1BNJpeJiW1pE94ZAPJcZtzZtai/wBlXpNqgCwvIB0cwiHNbzbY87hYP7OabhUwz3tP80PA1jO2A4d4HcVhp697MN7ArM7qzmg/9Jlc5tXofh6pJ9m9jj77HM15tDGtPfE81nbD6ePZ1MU32jdC9gAeObmaPGsxBEaFeh7Lr06tMVKTmvpn3hcTvEkSHcjB5BNel37eS43oHiG3pObVHAjI7kBcjzIXPY3AVaJirTfTO7MLHudofBfR1OjSOhaeQufISpzsmjUaWuYSDqDTcQfMLCx8yCmnNNe47b/CfCVZdQc/Dv8A4WONOebCLD+UhebdJOgmOwcufS9rSH/FpS4AcXt7TO8iOaK5NwhNKkLt4uOIQGECTIo5pkGTmQ5kOVLKtILMnzoE9NpJgAk8AiizqXD0XPMMaXHgBPnwWjhNktAzVj/pGncTv7gt7CYhgbFMADgBCrNrnzsgttVqMpnXLd7vFrdPNO7A0txe7n1WjwEErrhsg4gS4ZeD9/lvHJYm0NmVKB64lu547J7+B5H1Uyljp0uzK6vLM/Ym7mnxJ+UKSjQa03b3fe9WWOUoErncq9c6OLPq13t0DQOLQfW6gdjn/m9B9Fquo8FSxGBB0seG7y+i1M3HP49nCs6vmdJ1gAneY9P79y09mHrMA/OLDmsZ1NzTBEfe5X9nYvIZI8tQdxHMK8xxn6cpfSkaRbY2ixHMWKGFtbVrMrA1oIqAgVQCAHTYVRzJgHmQd5KyDU4CPUqR0ykl5JsS2dARPfKs4KuGF2cSRIaDMAk667hu56K/sV9MdR4Bmc3GbRG6FX2x7NpY6mCM7CHcnNcWuLeAIjuk+FY5lvpX/aOqRHK/A7u6AoDQJaXNBIGp3jTtRuneoiUeHrFjg4GDxuPUXHgqylwu0nMsbj1/VaGHrDMKlOH/AJmnXvvvUdb2NTX90/eQJYSTraBHPq9ziqdXBvp9b3dz2mWydL6tPIweSu019vU9i9O8JiaTcNtRji9hIp17MqMB0640i13QCGicxVza/Ql1RvtsJUbimROZvVrgbi9gtUsNQJO4LyqljA4AVW5hucNR98vVbGx9pYjCkVMJVJAM5Z85FpPGIKmgWKwrmmHCCDE6XG4jcbaa+Sl2LtWrharatI3B69N3YeODh3aO1G7ge3wPSjB7SaG46n7OtoK9PtW0D4EPH8JFpgAm6wOk/RSrhgKrYq0CQBWp3ZBs3MNaZ0EG1xBOgD2fYW1KeIo061PsvbInUbi0xvBBB5grTOKa0arz7oDh61LCMp5HZi578u9oc6QCNxi8bpXX08A+M1VwYOZjwC3ZPtiX0lxG3SOxTzHhMfr6KpT2pj39nD04/iJHwJWxhqFIaEE8/S25WhWasab2846Q/huMXmqGjTw9U3zUXak73MjK7mbHmvJOk/RfE4J+WuyQezUbOU8ATudyPqvqYFcx0xw7CIfTFSm/q1abohzTaWH3ag3HQxBizmy+FfMkDiku42l+GWK9q/8AZnU30Z/due5zXZeDhkNxpO+J3plNq8rlavR2ix9Qh4BhstB0mRu3rIlW9nBweHC0b+caLTNdXi8DSeIc0d4sR4hUaeFbRcGgTIkSDfdcjUyR1R5XAOvsgtrC1nDtDeP0WxX2WxzcrhbcbSDESJ5TY2IJBkLemNuVqsza3kdWO6QBlmZvpM3IzCco4JxpPDhBNjeCCDpImCOYJGsEwr2OwLqXbgtgw73TOszMX1Dpm3+aSIrPbMjUyRF5zRcRM541E5o7b6Y6qnFb1uOt2ZtRlUW6rvynf/Kd6tvIIIIBBsQbgjgQV5+CRcH+IHkPeBGrR+cdWbAuW/szb2ja3g8a/wCoDXvC6zLbjcdG2n0ejrUPGmT/ANhPwPnuWI15BgggixBsQeY3LuxoCILTcOBkEciFW2jsqnWHWs7c4a+PEcj6Lnn0peHo6Xybj4ycq1yL2cpsfgalA9cS3c8dk8J/KeR8JQU668tlj6nTzxzgn0A7quA+v0KzMXgHMuLj1H1HNbLCDZSU2HT7KTPR1PjY5/25pj/4okQe4qN1ODc3W9iNiBxkHLyFx5blXfsJ35x5H6rpM8fbxZfH6k8XFRwzusFLtBhLKZgwDUExaZaYnxVlmx3D3h5fqtTC1S1hpua17CQ4NcDAcBZwvr8QSDYrd+nHGzzLXLfszomLGSOYGpA1IHEKzRwz2kkNJAEuaQJyggyAZv5xPNbFHD1sxIcapJswjLLrAQRdvhw1GquYP8P9pYgAGk5rLQCMjIGl3kSeZlVhydZw923ESCAeNrA/y+mibCYx9M9U8suoI4Rw5L1TZv4NPMGvWY3kJeR5Q1dXs78OdnUO1mqHfJDGnvaz6prazLXDxKjhRV0Y+m7gGyP/AI9R3iAOBW7sjoHj6nWbTcwfmdDGkci6x7ivaqb8Lhx+4o02EaENEj/Vr6rF2rtqpUJaD4n45Rr4p21m57+nHYLo+/A1G1vbsqP9owVAwmGNe4NOafeIL95Fl6yMZhS1supe0iCxrwC/SZa09bjfmvMsTsqkQ7OSHOjryJEaQDYKTZ1OlQk0y5zojM6LDfFgBKv0zXozttNpjK2AN3L6rOq7el0zuMHhx87eS4zFbRJBvH3qof8AFSBIMFXa6d9S2qHEHNMb+UaT5WVPbHTGnR6o67zo0X+Gv3JC8+xm2ntHaudB8SeSyaGIIcHh0uLw2SNDAJI3WBMbtbKXP0nY6/GdOceCSGOaB/KItP5TujedQrFDpxUxDIcMzxpMNAPF5Fo7hujUrzyljqxc51R7nMBvJ7ROjGflceLYyiTyNrCksr5d8EGYnQOGYCwdGWRuMhc755dOHq2E281rGgkSAJiwnfAN470y4dr+9JT8adzx6kySAtVzcrQQLNI8QRf1Wdg+14FbuHaHCF0kLUtFp6tai6Hj7gjeOS6nYu3WVoY/qVd7dzubDv7tVxsvouLhdupGggmBEnu/Sy1qWAZiWF9NwDxctNjbetys5T/HcPoBwgiQfvwPPcua2psAtk0xmbEZYBIAMhrRYPaDEMMNm7s5UWzdvVaMU64LwN5s8Dv0d4x37l0uExlKsJpuDuI3jvBuFrUyY3cXCFsyDr2pkXy2Lsz7GLg1njKDORtlG+jvbvbn3jq/mOe7WEmfaVDLpGVq7LaGy2PkwGv1zAAy4CGuc02qFo0zTG6FgYrZ76fuucA4vlrfanMTAOU/5tczJqVIa2XZRosXGxuZSqmy9r1KB6pBa4ZixwOVzT7wBgidzoE21XbbKr08Qz2lKRByuadWugGx3i48/LntldGnVetXJYyZNJriXuOubEVTdztD42DV3WzcGxjQxjQ1o0A0/vzWpaxZENHZ2axEg6g7xzChf+HFKqZZmpH+GC3+k6dwIXS03sbqjftktEMHilm+WsMrjxXLH8KK7bjFUj/MxzfgXKCr0BrN1xOHEf8AuePu/dl0FfGYh+8juVV2AqG7ie8rP4cXefM6smpWN/4WjtYumO6m53xe1WKXRSgRD8W/madMMI7i57vgtKjs0u7ILu7T+o9X1WthNhn3gBx+n39VPxYT6L8vr5fuZWzOhuBhud9eo6BIc9oAMXADWg+q6DCdGMAwSMOx385dU9HkhS46nSwtB1ep1g2LAgXNrk9kcT8dFxh6X1a8mk9jKYsRTBzX/M54zcbgNlNxy8u6dXo0mgU2MYMzLMa1ojO3cAEFfbzRvXn+M2s6DcmBN+IvqqbsZUquysa4nWGNzGOcQAOfNaZrtsX0l1iVk4rpF/F5XXI46sWmHG/DO18ciW2HdqqNTaA4oajp6+23HcO8k/CYVV+0nOMl3lb4Lm344nRQvxZ4+SiuhqY4Df8ANV6m0+F/gsL2xSknVEaNXGuP2FIK3HRUKLU+06kMje4x4b/p4qWrEFfFZsziYtaeGgHr6q1szBPqklziyJMwfyAEkAWAaW9Y6Z28VVwQdIIqez35m9uLg5SLjxI03xCvYbaposztaS7OCZcb06hfLSfzH2DXZyD29IscNqBxYB/d3gENdplE39mNzjveetwywrWyGzUt7rfg1rR8ENVwLczne1Bs1zh+9AA0qOFy4SBBLhvFjKiw2L9mHHVzj9ykS3w6lkRd3oT6p1xdXEPcSS4yfBMt7Yczhe14FamDxGUwVl4cS7uBPDQLRpMmHcJzcpBCYtV0zaDajRAuACb7wbObPh8VlYnB1KB9owwBmJeDAF5AjdYmxN4sZsWwWKLDvIm3Ed3FdNg6wqCZmdd8zrPFb1tnuuLEZtEEZawAmLHsmRIynVhgi1tdE1TBEEOpPII0k5SO54t8Ff2p0c9oc1N0OiMrpLYkmBOgubc1gVvbYYhrw6nOgN2OHEAnTuMLN3OWpMbx4bFPpJiKVqoa8cyA7zbPqFfo9LqB7TajT3Bw8wfkuaOOY/tME/mYQPMOj4JMp0Tq5w72OHqnev476eh7P2g2oGvboYHCQTAtxDiPMrYpYlugcCeAMnyF1wezNq4SlTye0JuDcAe8CbSt1vTHD2DXjkLeglXbn26dXTv7rz4Zf+8hXaQA/I3mSXebQB8Vwr+lNP8A5o8x9VJT20HAEGQbgiYI4hNmnoDMQze/vDQ1o9ZcP6kTKtKQQ0E7i7rEdznSVw9HaU8fIrSobTa0ZnnK0akggD0VHcUKoKjrVCvMdqfiK6fZ4RnLORJ/0t0HjPcFgV9tbQf1zVPcXuPdDWWHcFLYslew4/Z4r0n0nyWvblMa8QRzBAPgvHMZhKuz8VkqiRx3VKZPab9NxEK9genWMwrh7fPkm7muL2jvY9dltfFYfaWGHtA2QMzHtvrbM24MHQtnhoQIxfbccjjsSLxoufq4kxHh5La2nhmUwGUy5waAMzoBJG+BoOUlc9XHW7/v77lqVgxq8yUwckArmG2dVf2WH4IbVgJRhi3ML0dce26OQv8A2UtUYSjq4Odw7RnuFh4lBi0cOToCVeobLcdYCrYzpEB2Gho3Ztf6R+qysRtapU/M4eQ8As2rpvvY1h7TXd1/h4rG2nXzPEaAep1+SrhjnfRT0tnuKza1IejTLwGtPWmI4g8O4yeN+RV6pgXgEvaabc3v9WGta1tOQblwGa3Obqv/AIU/UFQYjBP94k98ooa+ImzNOO88ygYzima2FNSoueYY0uPLd37gtRighOtFuwq0asHIk/JpCSukcGDF1o4XGw6QALAZbwRvaeF7jgs8hMsyt2bdQ2m0tL6d26Oae0wkGx5XP3MqnVdTl7HaetwLjx9FjbO2g5jgQ6HC06gj8rxvH3zWw8tqg5Oo89qlx3zTPvC2moXSVjh0GyOkFMwKkhau2dl4fGw4VCHBuUEQ4RJIDmnW53ELgA4Dd9T9ApKWKcwy1xC13e2e3018R0GqDsljhxDnMP8AS4FvqqL+imJbpTqeDqJ/3BW6PSSsB2p79VIektQqeGpcma7o/iBq2t50/wD9FJR2FXHYphp3vqPpiJ4ZTY89VNW268/3Vd213ngs+Gt28r+z9lNpz7Qse42tOQX3yJcOUAHfmFlffXk8/u5XPjaLipaVcneojoaGMDRJNhqsPau1KmIflbIYDAA46eLvhoqu0cWYDAbn04n75KSjQe2nNJhc426vWc1uhIaDm6xkZosA7iE2SLFNzKIaIa95expE9US4B0kXc650IAMa3CzcftGsM3XaTmaB+7piIBLxpeJYL8e9U8NnLg0NMh0gXnMAYBHHRO+gRZ5yNEyXal09eG6kzbcOqJIUaWsFtMvBZUuYJ06rgB1hGjXACbWMERJBW10KxrmOrUJs3rs7jZw7rtPmsLAZg5ppt9mwuaDVeYc8TcNPAj3WSdxLlP0dqxXceFC//QhXTYl+ZXsP0TLmh1Xqg7t6xcLtttF2csD3Dstd2Z3EgXPdZUtt9LcTXvUqEA6MZ1R5DUd8qyxnVdPU/Y8Pq8SN1nHygnzWXjulwFqbLcXm39It6rjjUe7S3qUdPCybyTzTuXS/jdv1qti5zhwHVb5DVU2sqO3x3fVX8PgVo4fCR/ZYtVlYXZ3LxK1qGzxvV6nRHBWWsCm10q08EArbWAKVjCdJPd81ZpYEnW3qVlVVimbgy8dmBxNv7qxmpU9Lnlc+egVertB57PV9T5/onAB+xKLetUM+g8tT92WdjNpinaiyw0kZWjuaInxhXsp1JJPM/NRVcO12oAPJamaXFgu2rWJn2h8MoCdaDtk8h6JLXcz2vPoTEIyUoRpErWFxHuuuN14juO5QlqEtRG1Ue49oF0ReIeLWztPatF9e9QucDeQeY+7KlQrwRy4WMcAfkQRyT1cQZkgc4tK3tNNGjhi7skHlInyVsbIrflN1kNE6KT9vey2Zw7iY9Cpte3+WqNkVT7qMbBr3OTS55Dn5jzWV/jT/AM7/AOp31THbL97nkb+s76puJ21oVMA9vaEImWVanUDhMpYitDSRwP6IiGk4vqEjiGt8/qpcfhKZJe6q6PdyUs1m9mS5zYtCrbJeA5smAHNJ7gRKsYas500qgyBoPtH8GNMOtvceyBvc4BRprdHTdhPtHNqOFMFxAdUBzBrGuJ6oNQNls3DXawQoOkT6jXPqNfTezOKYeyH+zLQZpue5ucO6sg6OGYgmDGXtTFzSaAMmd2cNuctJg9nQbPL96Z35gd6sPxDnvNcCW1hFdu51SR7RpAvLnAVARoXiNEVTwbXOfneScoLyXEk2swSf4i3wJSwWMDfaG8uhogaNGvpCnrQ0FjbyZJMTyBjhJ04lBSw/JRA5ibx81LTw5KuUMIrlFg3EcPFTaqVHBq9RoBWGUpVilQJsBJ5fNQRU2K0xqt0Nmk9qB6n6K01tNnM+Z+gRVOhhXO0BjibfHcr9PBtb2zPoP1QuxZOlvU/RRkE6qaRZfi2tENHyCqVa7nanw0CdzZUYp87jVKpjfl3JBpUzaakZRzWAJ3b4vrO7xU0quke51rwATIjgLladHZsdo+A+qJ+Lp0xDRPIaeLv7ppFZuBqEaAd5TqJ21Kk+6OX9ykr4HlRdzlBCkDY0ISJ5ytsokk8J4RQFqAqaExagfD1gLGY+9FfIw7m3qOB3S0C/gSs4sTeyV2mlg4Jv/Np+OYf7UBwzB/xafh7Q/wCxAKB4KRuDcdyijo1GsHbzdwMeZQ4jFgiBKIYB3JSDZzuSbRVwtWNVsgMrNDS8U5cDUP5wLAzucBNtCSSSqI2bzU1PARvKbVdxGzwXZ3upNmAOtnhoADQ2LCAABI3KFpAltIEybuOpNxYe7Yn70KlhgNyssphTYr0sLxVqnh+SnwtBzjDGl3d8zuWzhdiPd23BvIXPnoPVBisEa6LUweBe73YHE2HktRlHD0f4nD/U76D0UNfazr5AGjibnyQTUtmNbd5n0CkdimNs0T3WCzqtdxEuN+cjw+wq7Km5BouxBdYm3AJso0VT2oifv9Uza/D4ILjbIjX5Kqwyr9DZ73bso4nXy/sgj9pKno4dztAe82H6q2MPSpjrGf5vk1Q1tp7mDxPyCmvYs08G1olx+QQ1Me1ohgn0CzH1i67jP36Je1CbVLiMS52pt5Dy+qrPMXv5E+gTlxQ5isqMFJIFJByWL2A2m4Z3wxwjPls1/BzZsDeDKKhsRsdWvQLT7xIkfIee5OzaFT2RpODXCIzGT1d1hFxuM8OCpCizvPNdnJdxtHCMplrT7aqRGZshoPG3Vt4nzWfTotjrNE/eqkLpskIUEL8I3cEhhW8FPmTwou0IoNG4KRtMcE4CfMqHFNEGgJkzgoJGwkVH5qzhMJUqHqNLue7xcbBFRtapW01t4To7vqu8G/Nx+nirn7RhqHZAzfw9Z3i4/VNDJw2xqj92Uc5ny+sLTp7Go0xNWTzcYHgBr6qriOkD3dgBg46nz0VB1VzjLiSeJUGzW2rTYIptn0b6fos+vtCo/V0DgLDxVVxAgSJMwN5jWOKMNRREn7+qQLv7a+adjvvcpsqgjmyBzp493ermHwVR/ZBPPQeenxWjh9gt1qOJ5NsPEm/wV0MKm0uIDRmPACT5DxWxgtiON3nKOAufPQeqtvx1CkMtMA8maeLv7rOxG1Kr7A5R/D/9tfgmpDbXzUaP839Tv09AqtbazndnqjzP6LHLwO/emdX+X36psXiSTJJM79ZQ+0VZtS0/rzTvAMTBI03weI4fqoqxmThVmyFJMKCwCmlRB6Fz+Hogmc4bxP33pKpmPd4JkVzrtFGUkl1cQuKIJJKKNFv++SdJRTRdG0fNMkgchAdUkkF3YlMOrMa4BwvYiRu3FdqBu3DRMkrFYfSuq4BoDiARcAkA96wWffknSUolb9PipXaffBMkoJW6IinSQEd33uWjshgNUAgEXsRISSRXSFYHSSoZaJMEXE28kklbwjMpfX4J3m3j9UkllVYmw++Kl4/e5JJRUrTcd30Rn79EySCQIZ+SSSAz80mi/mkkoBSSSVV//9k='
    },

    UI.Facets:[
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet3',
            Label : 'General Information on Item',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        }
    ],

    UI.FieldGroup #GeneratedGroup2:{
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Product_ID',
                Value : productId
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity',
                Value : quantity
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : price
            },
        ],
    }
);





